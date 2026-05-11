/*class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {

        for (int i = 0; i < nums.size(); i++) {

            for (int j = i + 1; j < nums.size(); j++) {

                if (nums[i] + nums[j] == target) {
                    return {i, j};
                }

            }
        }
        return{};
    }
};
*/
class Solution {
  List<int> twoSum(List<int> number, int target) {
    final map = <int, int>{};
    for (int i = 0; i <= number.length - 1; i++) {
      int complement = target - number[i];
      if (map.containsKey(complement)) {
        return [map[complement]!, i];
      }
      map[number[i]] = i;
    }
    return [];
  }
}
