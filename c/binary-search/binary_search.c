#include "binary_search.h"

const int *binary_search(int value, const int *arr, size_t length) {
  int min = 0;
  int max = length-1;
  while (min <= max) {
    int mid = (max + min) / 2;
    int pivot = arr[mid];
    if (pivot == value) {
      return &arr[mid];
    } else if (value > pivot) {
      min = mid + 1;
    } else {
      max = mid - 1;
    }
  }
  return NULL;
}
