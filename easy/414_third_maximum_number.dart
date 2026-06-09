class Solution {
  int thirdMax(List<int> nums) {
    Set<int> unique = nums.toSet();
    if (unique.length < 3) {
      return unique.reduce((a, b) => a > b ? a : b);
    }
    List<int> sorted = unique.toList()..sort((a, b) => b.compareTo(a));
    return sorted[2];
  }
}
