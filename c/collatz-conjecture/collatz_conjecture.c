#include "collatz_conjecture.h"

int steps(int start) {
  int count = 0;
  if (start < 1) {
    return -1;
  }
  while (start != 1) {
    count += 1;
    if ((start % 2) == 0) {
      start /= 2;
    } else {
      start = (3 * start) + 1;
    }
  }
  return count;
}
