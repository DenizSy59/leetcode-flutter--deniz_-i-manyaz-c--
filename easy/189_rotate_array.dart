class Solution {
  void rotate(List<int> nums, int k) {
    k = k % nums.length;
    List<int> temp = nums.sublist(nums.length - k);
    for (int i = nums.length - 1; i >= k; i--) {
      nums[i] = nums[i - k];
    }
    for (int i = 0; i < k; i++) {
      nums[i] = temp[i];
    }
  }
}
