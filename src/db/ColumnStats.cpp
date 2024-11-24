#include <db/ColumnStats.hpp>
#include <cmath>
#include <numeric>
#include <stdexcept>

using namespace db;

ColumnStats::ColumnStats(unsigned buckets, int min, int max) 
    : buckets(buckets), min(min), max(max), histogram(buckets, 0), count(0) {
  if (buckets == 0 || min >= max) {
    throw std::invalid_argument("Invalid bucket count or range");
  }
  bucketWidth = std::ceil(static_cast<double>(max - min) / buckets);
}

void ColumnStats::addValue(int v) {
  if (v < min || v > max) {
    return; // Ignore values outside range
  }
  size_t bucketIndex = (v - min) / bucketWidth;
  histogram[bucketIndex]++;
  count++;
}

size_t ColumnStats::estimateCardinality(PredicateOp op, int v) const {
  if (count == 0) {
    return 0;
  }

  if (v < min) {
    switch (op) {
      case PredicateOp::EQ:
      case PredicateOp::LT:
      case PredicateOp::LE:
        return 0;
      case PredicateOp::GT:
      case PredicateOp::GE:
        return count;
      default:
        throw std::logic_error("Unsupported operation");
    }
  }

  if (v > max) {
    switch (op) {
      case PredicateOp::EQ:
      case PredicateOp::GT:
      case PredicateOp::GE:
        return 0;
      case PredicateOp::LT:
      case PredicateOp::LE:
        return count;
      default:
        throw std::logic_error("Unsupported operation");
    }
  }

  size_t bucketIndex = (v - min) / bucketWidth;
  double bucketHeight = histogram[bucketIndex];
  int bucketStart = min + bucketIndex * bucketWidth;
  int bucketEnd = bucketStart + bucketWidth;

  double fraction = 0.0;
  switch (op) {
    case PredicateOp::EQ:
      return static_cast<size_t>(bucketHeight / bucketWidth);

    case PredicateOp::NE:
      return count - static_cast<size_t>(bucketHeight / bucketWidth);

    case PredicateOp::LT:
      fraction = static_cast<double>(v - bucketStart) / bucketWidth;
      return static_cast<size_t>(fraction * bucketHeight) +
             std::accumulate(histogram.begin(), histogram.begin() + bucketIndex, 0);

    case PredicateOp::LE:
      fraction = static_cast<double>(v - bucketStart + 1) / bucketWidth;
      return static_cast<size_t>(fraction * bucketHeight) +
             std::accumulate(histogram.begin(), histogram.begin() + bucketIndex, 0);

    case PredicateOp::GT:
      fraction = static_cast<double>(bucketEnd - v) / bucketWidth;
      return static_cast<size_t>(fraction * bucketHeight) +
             std::accumulate(histogram.begin() + bucketIndex + 1, histogram.end(), 0);

    case PredicateOp::GE:
      fraction = static_cast<double>(bucketEnd - v + 1) / bucketWidth;
      return static_cast<size_t>(fraction * bucketHeight) +
             std::accumulate(histogram.begin() + bucketIndex + 1, histogram.end(), 0);

    default:
      throw std::logic_error("Unsupported operation");
  }
}
