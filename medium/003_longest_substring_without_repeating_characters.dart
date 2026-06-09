class Solution {
  int lengthOfLongestSubstring(String s) {
    Map<String, int> lastSeen = {};
    int maxLen = 0;
    int start = 0;
    for (int i = 0; i < s.length; i++) {
      if (lastSeen.containsKey(s[i]) && lastSeen[s[i]]! >= start) {
        start = lastSeen[s[i]]! + 1;
      }
      lastSeen[s[i]] = i;
      int currentLen = i - start + 1;
      if (currentLen > maxLen) maxLen = currentLen;
    }
    return maxLen;
  }
}
