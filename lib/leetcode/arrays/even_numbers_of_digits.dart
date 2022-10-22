/* Given an array nums of integers, return how many of them
contain an even number of digits.
*/

int evenNumberOfDigits(List<int> array) {
  var count = 0;

  for (var element in array) {
    if (element.toString().length % 2 == 0) {
      count = count + 1;
    }
  }
  return count;
}

int evenNumberOfDigitsTwo(List<int> array) {
  var count = 0;

  for (var element in array) {
    var digit = element;
    var digitCount = 0;

    while (digit > 0) {
      digit = digit ~/ 10;
      digitCount = digitCount + 1;
    }

    if (digitCount % 2 == 0) {
      count = count + 1;
    }
  }
  return count;
}

// count the number of digits in an integer
int countDigits(int digit) {
  if (digit ~/ 10 == 0) {
    return 1;
  } else {
    return 1 + countDigits(digit ~/ 10);
  }
}
