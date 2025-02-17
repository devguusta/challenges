class Solution {
  int search(List<int> nums, int target) {
    int maxRange = nums.length;
    int lo = 0;
    int steps = 0;

    while (lo < maxRange) {
      steps++;

      var mid = ((lo + maxRange) / 2).toInt();
      if (nums[mid] == target) {
        print("steps $steps");
        return mid;
      } else if (nums[mid] < target) {
        lo = mid + 1;
      } else {
        maxRange = mid;
      }
    }

    return -1;
  }
}
