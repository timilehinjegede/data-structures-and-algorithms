import 'package:dart_algorithms/project_euler/problem_2.dart';
import 'package:test/test.dart';

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
