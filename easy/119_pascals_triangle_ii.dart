class Solution {
  List<int> getRow(int rowIndex) {
    List<int> row = [1];
    for (int i = 1; i <= rowIndex; i++) {
      List<int> newRow = List.filled(i + 1, 1);
      for (int j = 1; j < i; j++) {
        newRow[j] = row[j - 1] + row[j];
      }
      row = newRow;
    }
    return row;
  }
}
