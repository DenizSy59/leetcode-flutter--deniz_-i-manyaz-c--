class Solution {
  bool isPalindrome(int x) {
    String st = x.toString();
    return st == st.split('').reversed.join();
  }
}
