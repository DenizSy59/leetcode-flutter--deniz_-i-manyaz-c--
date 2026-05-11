class Solution {
  int removeDuplicates(List<int> nums) {
    int k = 0;
    for (int number in nums) {
      if (number != nums[k]) {
        k++;
        nums[k] = number;
      }
    }
    return k + 1;
  }
}
