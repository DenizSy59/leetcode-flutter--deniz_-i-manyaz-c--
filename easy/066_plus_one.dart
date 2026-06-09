class Solution {
  List<int> plusOne(List<int> digits) {
    List<int> nines = [];

    for (int i = digits.length - 1; i >= 0; i--) {
      if (digits[i] == 9) {
        nines.add(i);
      } else {
        digits[i]++;
        for (int j in nines) {
          digits[j] = 0;
        }
        return digits;
      }
    }
    // all were 9
    digits.insert(0, 1);
    for (int j in nines) {
      digits[j + 1] = 0;
    }
    return digits;
  }
}
