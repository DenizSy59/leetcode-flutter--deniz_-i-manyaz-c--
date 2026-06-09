class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    Map<String, int> charCount = {};
    for (int i = 0; i < magazine.length; i++) {
      charCount[magazine[i]] = (charCount[magazine[i]] ?? 0) + 1;
    }
    for (int i = 0; i < ransomNote.length; i++) {
      if (!charCount.containsKey(ransomNote[i]) || charCount[ransomNote[i]]! <= 0) {
        return false;
      }
      charCount[ransomNote[i]] = charCount[ransomNote[i]]! - 1;
    }
    return true;
  }
}
