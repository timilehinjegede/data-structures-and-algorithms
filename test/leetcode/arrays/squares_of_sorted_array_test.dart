import 'package:dart_algorithms/leetcode/arrays/sqaures_of_sorted_array.dart';
import 'package:test/test.dart';

void main() {
  test('squaresOfSortedArray([-4, -1, 0, 3, 10] should return [0, 1, 9, 16, 100]', () {
    final result = squaresOfSortedArray([-4, -1, 0, 3, 10]);
    expect(result, [0, 1, 9, 16, 100]);
  });

  test('squaresOfSortedArray([-7, -3, 2, 3, 11]) should return [4, 9, 9, 49, 121]', () {
    final result = squaresOfSortedArray([-7, -3, 2, 3, 11]);
    expect(result, [4, 9, 9, 49, 121]);
  });
}
