#include "difference_of_squares.h"
#include <stdbool.h>

unsigned int sum_of_squares(unsigned int number) {
  unsigned int count = 0;
  for (unsigned int i = 0; i <= number; i++) {
    count += i * i;
  }
  return count;
}

unsigned int square_of_sum(unsigned int number) {
  unsigned int count = 0;
  for (unsigned int i = 0; i <= number; i++) {
    count += i;
  }
  return count * count;
}

unsigned int difference_of_squares(unsigned int number) {
  return square_of_sum(number) - sum_of_squares(number);
}

// int main(int argc, char *argv[]) { return EXIT_SUCCESS; }
