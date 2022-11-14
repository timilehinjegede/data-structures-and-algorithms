import 'package:dart_algorithms/leetcode/arrays/even_numbers_of_digits.dart';
import 'package:test/test.dart';

void main() {
  test('evenNumberOfDigits([12, 345, 2, 6, 7896]) should return 2', () {
    final result = evenNumberOfDigits([12, 345, 2, 6, 7896]);
    expect(result, 2);
  });

  test('= evenNumberOfDigits([555, 901, 482, 1771]) should return 1', () {
    final result = evenNumberOfDigits([555, 901, 482, 1771]);
    expect(result, 1);
  });
}
