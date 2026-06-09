class Solution {
  String toLowerCase(String s) {
    StringBuffer result = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      int code = s.codeUnitAt(i);
      if (code >= 65 && code <= 90) {
        result.writeCharCode(code + 32);
      } else {
        result.writeCharCode(code);
      }
    }
    return result.toString();
  }
}
