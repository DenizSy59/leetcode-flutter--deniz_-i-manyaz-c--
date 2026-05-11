class Solution {
  bool isValid(String s) {
    List<String> order = [];
    Map<String, String> map = {')': '(', ']': '[', '}': '{'};
    for (int i = 0; i < s.length; i++) {
      String current = s[i];
      if (map.containsKey(current)) {
        // closing bracket → check
        if (order.isEmpty) return false;
        String last = order.removeLast();
        if (map[current] != last) return false;
      } else {
        // opening bracket → push
        order.add(current);
      }
    }
    if (order.isEmpty) {
      return true;
    } else {
      return false;
    } //check if its empty
  }
}
