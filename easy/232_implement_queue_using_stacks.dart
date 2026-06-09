class MyQueue {
  List<int> stackIn = [];
  List<int> stackOut = [];

  void push(int x) {
    stackIn.add(x);
  }

  int pop() {
    if (stackOut.isEmpty) {
      while (stackIn.isNotEmpty) {
        stackOut.add(stackIn.removeLast());
      }
    }
    return stackOut.removeLast();
  }

  int peek() {
    if (stackOut.isEmpty) {
      while (stackIn.isNotEmpty) {
        stackOut.add(stackIn.removeLast());
      }
    }
    return stackOut.last;
  }

  bool empty() {
    return stackIn.isEmpty && stackOut.isEmpty;
  }
}
