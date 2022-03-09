import 'package:test/test.dart';

/*
Problem 2:
[https://projecteuler.net/problem=2] or [https://www.freecodecamp.org/learn/coding-interview-prep/project-euler/problem-2-even-fibonacci-numbers]
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
*/

// Solution
int evenFibonacciSum(int n) {
  // the starting number in the fibonacci sequence
  var previous = 1;
  // the next number in the fibonacci sequence
  var next = 2;
  // the sum of even numbers in the fibonacci sequence
  var evenSum = 0;

  // if the number of terms [n] is greater than 2, add to the [evenSum]
  if (n > 2) {
    evenSum += next;
  }

  // loop through the number of terms [minus 2]  for the fibonacci sequence
  for (var i = 0; i < n - 2; i++) {
    // get the sum[which is the next term] in the sequence
    var sum = previous + next;
    // update the previous term
    previous = next;
    // update the next term
    next = sum;

    // if the [sum] is even...
    if (sum % 2 == 0) {
      // ...and the sum is not greater than [n] => whose values do not exceed n
      if (sum > n) break;
      // ... else add the [sum] which is even to [evenSum]
      evenSum += sum;
    }
  }

  // return the sum of even numbers in the sequence
  return evenSum;
}

// wip
int evenFibonacciSumRecursion(int n) {
  // fn = fn-1 : fn-2; where base cases are f0 and f1;
  // f5 = f4 + f3;
  // f4 = f3 + f2;
  // f3 = f2 + f1;
  // f2 = f1 + f0;
  // f0;
  // f1;

  if (n == 0) {
    return 1;
  } else if (n == 1) {
    if (n < 2) return 0;
    return 2;
  } else {
    return evenFibonacciSumRecursion(n - 1) + evenFibonacciSumRecursion(n - 2);
  }
}

// Tests
void main() {
  // using the loop solution
  test('evenFibonacciSum(8) should return 10', () {
    final result = evenFibonacciSum(8);
    expect(result, 10);
  });
  test('evenFibonacciSum(10) should return 10', () {
    final result = evenFibonacciSum(10);
    expect(result, 10);
  });
  test('evenFibonacciSum(34) should return 44', () {
    final result = evenFibonacciSum(34);
    expect(result, 44);
  });
  test('evenFibonacciSum(60) should return 44', () {
    final result = evenFibonacciSum(60);
    expect(result, 44);
  });
  test('evenFibonacciSum(1000) should return 798', () {
    final result = evenFibonacciSum(1000);
    expect(result, 798);
  });
  test('evenFibonacciSum(100000) should return 60696', () {
    final result = evenFibonacciSum(100000);
    expect(result, 60696);
  });
  test('evenFibonacciSum(4000 000) should return 4613732', () {
    final result = evenFibonacciSum(4000000);
    expect(result, 4613732);
  });
}
