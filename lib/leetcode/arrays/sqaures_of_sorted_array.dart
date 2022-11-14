/*
Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted
in non-decreasing order.

Constraints:
1 <= nums.length <= 104
-104 <= nums[i] <= 104
nums is sorted in non-decreasing order.
*/

List<int> squaresOfSortedArray(List<int> array) {
  var sortedArray = <int>[];

  for (var element in array) {
    sortedArray.add(element * element);
  }

  return sortedArray..sort();
}