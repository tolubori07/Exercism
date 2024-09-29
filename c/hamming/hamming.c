#include "hamming.h"
#include <string.h>

int compute(const char *lhs, const char *rhs) {
  int count = 0;
  size_t len_lhs = strlen(lhs);
  size_t len_rhs = strlen(rhs);
  if (len_lhs != len_rhs) {
    return -1;
  }
  for (size_t i = 0; i < len_lhs; i++) {
    if (lhs[i] != rhs[i]) {
      count += 1;
    }
  }
  return count;
}
