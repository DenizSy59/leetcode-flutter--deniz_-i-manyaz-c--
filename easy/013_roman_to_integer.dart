class Solution {
  int romanToInt(String s) {
    final map = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };
    int total = 0;
    int b = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      int crNum = map[s[i]]!;
      if (crNum < b) {
        total -= crNum;
      } else {
        total += crNum;
      }
      b = crNum;
    }
    return total;
  }
}
