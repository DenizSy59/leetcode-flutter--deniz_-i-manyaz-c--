class Solution {
  int lengthOfLastWord(String s) {
    s = s.trimRight();
    int count = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      if (s[i] == ' ') break;
      count++;
    }
    return count;
  }
}
