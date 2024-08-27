#include "grains.h"
#include <math.h>
#include <stdint.h>

uint64_t square(uint8_t index) {
  uint64_t count = pow(2, index - 1);
  return count;
}

uint64_t total() {
  uint64_t count = 0;
  for (int i = 1; i <= 64; i++) {
    count += square(i);
  }
  return count;
}
