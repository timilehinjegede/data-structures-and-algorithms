/*
Given a binary array nums, return the maximum number of consecutive 1's in the array.
Constraints:
1 <= nums.length <= 105
nums[i] is either 0 or 1.
*/

int maxConsecutiveOnes(List<int> array) {
  var count = 0;
  var maxCount = 0;

  if (array.isEmpty) {
    return 0;
  } else if (array.length == 1) {
    if (array[0] == 1) return 1;
    return 0;
  } else {
    for (var element in array) {
      if (element == 1) {
        count = count + 1;
        if (count > maxCount) {
          maxCount = count;
        }
      } else {
        count = 0;
      }
    }

    return maxCount;
  }
}
