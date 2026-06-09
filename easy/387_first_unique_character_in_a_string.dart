class Solution {
  int firstUniqChar(String s) {
    Map<String, int> freq = {};
    for (int i = 0; i < s.length; i++) {
      freq[s[i]] = (freq[s[i]] ?? 0) + 1;
    }
    for (int i = 0; i < s.length; i++) {
      if (freq[s[i]] == 1) return i;
    }
    return -1;
  }
}
