class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, dynamic> hashMap = {};
    int i = 0;
    for (int n in nums) {
      int val = target - n;
      if (hashMap.containsKey(n)) {
        return [hashMap[n], i];
      }
      hashMap.addAll({val: i});
      i++;
    }
    return [];
  }
}
