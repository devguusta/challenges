import 'dart:math';

class ExponentialSearch {
  int bynary_search(List<int> nums, int target, int lo, int maxRange) {
    int steps = 0;

    while (lo <= maxRange) {
      steps++;

      var mid = ((lo + maxRange) / 2).toInt();
      if (nums[mid] == target) {
        print("steps $steps");
        return mid;
      } else if (nums[mid] < target) {
        lo = mid + 1;
      } else {
        maxRange = mid - 1;
      }
    }

    return -1;
  }

  int exponential_search(List<int> nums, int target) {
    int n = nums.length;
    if (nums[0] == target) return 0;

    int i = 1;
    while (i < n && nums[i] <= target) {
      i = i * 2;
    }
    if (i < n && nums[i] == target) return i;

    return bynary_search(nums, target, i ~/ 2, min(i, n - 1));
  }
}
