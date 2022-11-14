import 'package:dart_algorithms/leetcode/arrays/max_consecutive_ones.dart';
import 'package:test/test.dart';

void main() {
  test('maxConsecutiveOnes([1, 1, 0, 1, 1, 1]) should return 3', () {
    final result = maxConsecutiveOnes([1, 1, 0, 1, 1, 1]);
    expect(result, 3);
  });

  test('maxConsecutiveOnes([1, 0, 1, 1, 0, 1]) should return 2', () {
    final result = maxConsecutiveOnes([1, 0, 1, 1, 0, 1]);
    expect(result, 2);
  });
}
