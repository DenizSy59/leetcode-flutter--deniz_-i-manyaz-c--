class Solution {
  List<int> sortArrayByParity(List<int> nums) {
    List<int> evens = [];
    List<int> odds = [];
    for (int num in nums) {
      if (num % 2 == 0) {
        evens.add(num);
      } else {
        odds.add(num);
      }
    }
    evens.addAll(odds);
    return evens;
  }
}
