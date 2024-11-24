#include <db/Query.hpp>

using namespace db;

void db::projection(const DbFile &in, DbFile &out, const std::vector<std::string> &field_names) {
  const TupleDesc &tupleDesc = in.getTupleDesc();
  std::vector<size_t> field_indices;
  field_indices.reserve(field_names.size());
  for (const std::string &field_name : field_names) {
    field_indices.push_back(tupleDesc.index_of(field_name));
  }

  for (Tuple tuple : in) {
    std::vector<field_t> fields;
    for (size_t field_index : field_indices) {
      fields.push_back(tuple.get_field(field_index));
    }

    Tuple new_tuple(fields);
    out.insertTuple(new_tuple);
  }
}

bool evalPredicate(const field_t &lhs, PredicateOp op, const field_t &rhs) {
  switch (op) {
    case PredicateOp::EQ:
      return lhs == rhs;
    case PredicateOp::NE:
      return lhs != rhs;
    case PredicateOp::LT:
      return lhs < rhs;
    case PredicateOp::LE:
      return lhs <= rhs;
    case PredicateOp::GT:
      return lhs > rhs;
    case PredicateOp::GE:
      return lhs >= rhs;
  }
  return true;
}

void db::filter(const DbFile &in, DbFile &out, const std::vector<FilterPredicate> &pred) {
  const TupleDesc &tupleDesc = in.getTupleDesc();
  std::vector<size_t> filter_indices;
  filter_indices.reserve(pred.size());
  for (const FilterPredicate &predicate : pred) {
    filter_indices.push_back(tupleDesc.index_of(predicate.field_name));
  }

  for (Tuple tuple : in) {
    bool filtered = false;
    for (size_t i = 0; i < pred.size(); i++) {
      const FilterPredicate &predicate = pred[i];
      const field_t &field = tuple.get_field(filter_indices[i]);
      if (!evalPredicate(field, predicate.op, predicate.value)) {
        filtered = true;
        break;
      }
    }

    if (!filtered) {
      out.insertTuple(tuple);
    }
  }
}

struct GroupEntry {
  int count;
  field_t field;
};

void db::aggregate(const DbFile &in, DbFile &out, const Aggregate &agg) {
  const TupleDesc &tuple_desc = in.getTupleDesc();
  size_t field_index = tuple_desc.index_of(agg.field);
  ssize_t group_by_index = -1;
  if (agg.group.has_value()) {
    group_by_index = tuple_desc.index_of(agg.group.value());
  }

  std::unordered_map<field_t, GroupEntry> groups;

  for (Tuple tuple : in) {
    field_t group_by_field;
    const field_t &agg_field = tuple.get_field(field_index);

    if (group_by_index >= 0) {
      group_by_field = tuple.get_field(group_by_index);
    }

    auto it = groups.find(group_by_field);
    if (it == groups.end()) {
      if (agg.op == AggregateOp::COUNT) {
        groups.insert({group_by_field, {1, {1}}});
      } else {
        groups.insert({group_by_field, {1, agg_field}});
      }
    } else {
      switch (agg.op) {
        case AggregateOp::SUM:
        case AggregateOp::AVG:
          if (agg_field.index() == 0) {
            it->second.field = std::get<0>(it->second.field) + std::get<0>(agg_field);
          } else if (agg_field.index() == 1) {
            it->second.field = std::get<1>(it->second.field) + std::get<1>(agg_field);
          }
          break;
        case AggregateOp::MIN:
          it->second.field = std::min(it->second.field, agg_field);
          break;
        case AggregateOp::MAX:
          it->second.field = std::max(it->second.field, agg_field);
          break;
        case AggregateOp::COUNT:
          it->second.field = it->second.count + 1;
          break;
      }
      ++it->second.count;
    }
  }

  if (!agg.group.has_value() && agg.op == AggregateOp::COUNT && groups.empty()) {
    out.insertTuple({{0}});
  } else {
    for (const auto &it : groups) {
      if (agg.op == AggregateOp::AVG) {
        double sum;
        if (it.second.field.index() == 0) {
          sum = std::get<0>(it.second.field);
        } else if (it.second.field.index() == 1) {
          sum = std::get<1>(it.second.field);
        }
        double avg = sum / (double) it.second.count;
        if (group_by_index >= 0) {
          out.insertTuple({{it.first, avg}});
        } else {
          out.insertTuple({{avg}});
        }
      } else {
        if (group_by_index >= 0) {
          out.insertTuple({{it.first, it.second.field}});
        } else {
          out.insertTuple({{it.second.field}});
        }
      }
    }
  }
}

void db::join(const DbFile &left, const DbFile &right, DbFile &out, const JoinPredicate &pred) {
  TupleDesc l_desc = left.getTupleDesc();
  TupleDesc r_desc = right.getTupleDesc();
  size_t l_idx = l_desc.index_of(pred.left);
  size_t r_idx = r_desc.index_of(pred.right);

  for (Tuple l_tuple : left) {
    for (Tuple r_tuple : right) {
      const field_t &l_field = l_tuple.get_field(l_idx);
      const field_t &r_field = r_tuple.get_field(r_idx);

      bool match = evalPredicate(l_field, pred.op, r_field);
      if (!match)
        continue;

      std::vector<field_t> fields;
      fields.reserve(l_tuple.size() + r_tuple.size());
      for (size_t i = 0; i < l_tuple.size(); i++) {
        fields.push_back(l_tuple.get_field(i));
      }

      for (size_t i = 0; i < r_tuple.size(); i++) {
        if (pred.op != PredicateOp::EQ || i != r_idx) {
          fields.push_back(r_tuple.get_field(i));
        }
      }

      Tuple new_tuple = Tuple(fields);
      out.insertTuple(new_tuple);
    }
  }
}
