#include <db/ColumnStats.hpp>

using namespace db;

ColumnStats::ColumnStats(unsigned buckets, int min, int max)
:buckets(buckets),min(min),max(max)
// TODO pa4: some code goes here
{
  if (buckets == 0 ){
    
    return;
  }
  // TODO pa4: some code goes here
  w = (max -  min + 1) / buckets;
  if (w<=0){
    w = 1;
  }

  int counter = 0;
  int l = min;
  int r = min;
  for(int i = min;i<=max;i++){
    ++counter;
    if (counter == w){
      Histogram* h = new Histogram(w,l,i);
      l = i+1;
      counter = 0;
      hs.push_back(h);
    }
  }

  if (l <= max){
    Histogram* h = new Histogram(w,l,max);
    hs.push_back(h);
  }
}

void ColumnStats::addValue(int v) {
  // TODO pa4: some code goes here
  for(size_t i = 0; i < hs.size(); i++){
    if (hs[i]->l <= v && v <=hs[i]->r) {
      hs[i]->h = hs[i]->h +1;
    }
  }
}

size_t ColumnStats::estimateCardinality(PredicateOp op, int v) const {
  // TODO pa4: some code goes here
  size_t res = 0;
  switch(op){
    case PredicateOp::EQ:
      for(size_t i = 0; i < hs.size(); i++){
        if (hs[i]->l <= v && v <=hs[i]->r) {
          res = size_t(hs[i]->h / hs[i]->w);
          break;
        }
      }
      break;
    case PredicateOp::GE:
      for(size_t i = 0; i < hs.size(); i++){
        if (hs[i]->l <= v && v <=hs[i]->r) {
          res = res + size_t(hs[i]->h * (hs[i]->r - v + 1) / hs[i]->w);
        } else if (hs[i]->r >= v) {
          res = res + hs[i]->h;
        }
      }
      break;
    case PredicateOp::GT:
      for(size_t i = 0; i < hs.size(); i++){
        if (hs[i]->l <= v && v <=hs[i]->r) {
          res = res + size_t(hs[i]->h * (hs[i]->r - v) / hs[i]->w);
        } else if (hs[i]->r >= v) {
          res = res + hs[i]->h;
        }
      }
      break;
    case PredicateOp::LE:
        for (size_t i = 0; i < hs.size(); i++) {
            if (hs[i]->l <= v && v <= hs[i]->r) {
                res = res + size_t(hs[i]->h * (v - hs[i]->l + 1) / hs[i]->w);
            }
            else if (v >= hs[i]->r) {
                res = res + hs[i]->h;
            }
        }
        break;
    case PredicateOp::LT:
        for (size_t i = 0; i < hs.size(); i++) {
            if (hs[i]->l <= v && v <= hs[i]->r) {
                res = res + size_t(hs[i]->h * (v - hs[i]->l) / hs[i]->w);
            }
            else if (v >= hs[i]->r) {
                res = res + hs[i]->h;
            }
        }
        break;
    case PredicateOp::NE:
        int total = 0;
        int expect = 0;
        for (size_t i = 0; i < hs.size(); i++) {
            if (hs[i]->l <= v && v <= hs[i]->r) {
                expect = hs[i]->h;
                total = total + hs[i]->h;
                continue;
            }
            total = total + hs[i]->h;
        }
        res = size_t(total - expect / w);
        break;
  }
  return res;
}
