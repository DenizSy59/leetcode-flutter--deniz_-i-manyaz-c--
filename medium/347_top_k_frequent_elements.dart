class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> freq = {};
    for (int num in nums) {
      freq[num] = (freq[num] ?? 0) + 1;
    }
    List<MapEntry<int, int>> entries = freq.entries.toList();
    entries.sort((a, b) => b.value.compareTo(a.value));
    List<int> result = [];
    for (int i = 0; i < k; i++) {
      result.add(entries[i].key);
    }
    return result;
  }
}
