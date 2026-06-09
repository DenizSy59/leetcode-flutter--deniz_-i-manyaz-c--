class Solution {
  List<List<int>> merge(List<List<int>> intervals) {
    intervals.sort((a, b) => a[0].compareTo(b[0]));
    List<List<int>> merged = [intervals[0]];
    for (int i = 1; i < intervals.length; i++) {
      if (intervals[i][0] <= merged.last[1]) {
        merged.last[1] = merged.last[1] > intervals[i][1] ? merged.last[1] : intervals[i][1];
      } else {
        merged.add(intervals[i]);
      }
    }
    return merged;
  }
}
