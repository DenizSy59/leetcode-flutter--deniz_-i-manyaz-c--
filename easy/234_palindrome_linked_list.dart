class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

class Solution {
  bool isPalindrome(ListNode? head) {
    List<int> values = [];
    ListNode? current = head;
    while (current != null) {
      values.add(current.val);
      current = current.next;
    }
    int left = 0;
    int right = values.length - 1;
    while (left < right) {
      if (values[left] != values[right]) return false;
      left++;
      right--;
    }
    return true;
  }
}
