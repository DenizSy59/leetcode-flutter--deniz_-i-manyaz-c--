class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    Set<int> numSet = nums.toSet();
    List<int> result = [];
    for (int i = 1; i <= nums.length; i++) {
      if (!numSet.contains(i)) {
        result.add(i);
      }
    }
    return result;
  }
}
