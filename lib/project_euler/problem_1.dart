import 'package:test/test.dart';

/*
Problem 1:
[https://projecteuler.net/problem=1] or [https://www.freecodecamp.org/learn/coding-interview-prep/project-euler/problem-1-multiples-of-3-and-5]
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
*/

// Solution
int multiplesOf3and5(int number) {
  // variable to hold the sum of multiples of 3 and 5
  var sumOfMultiples = 0;

  for (var i = 0; i < number; i++) {
    // check if [i] is divisible by either 5 or 3
    if ((i % 3 == 0) || (i % 5 == 0)) {
      // if [i] is divisible, add to the [sumOfMultiples]
      sumOfMultiples += i;
    }
  }
  // return the [sumOfMultiples]
  return sumOfMultiples;
}

// Tests
void main() {
  test('multiplesOf3and5(10) should return a number.', () {
    final result = multiplesOf3and5(10);
    expect(result, 23);
  });
  test('multiplesOf3and5(49) should return 543.', () {
    final result = multiplesOf3and5(49);
    expect(result, 543);
  });
  test('multiplesOf3and5(1000) should return 233168.', () {
    final result = multiplesOf3and5(1000);
    expect(result, 233168);
  });
  test('multiplesOf3and5(8456) should return 16687353.', () {
    final result = multiplesOf3and5(8456);
    expect(result, 16687353);
  });
  test('multiplesOf3and5(19564) should return 89301183.', () {
    final result = multiplesOf3and5(19564);
    expect(result, 89301183);
  });
}
