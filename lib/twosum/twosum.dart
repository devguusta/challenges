class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> result = [];
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] + nums[i + 1] == target) {
        result.addAll([i, i + 1]);
        break;
      }
    }
    return result;
  }
}
