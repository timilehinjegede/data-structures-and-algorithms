import 'package:dart_algorithms/sorting/bubble_sort.dart';
import 'package:test/test.dart';

void main() {
  test('bubbleSort([6, 3, 32, 10, 16]) should return a sorted list.', () {
    final list = [6, 3, 32, 10, 16];
    bubbleSort(list);
    expect(list, [3, 6, 10, 16, 32]);
  });

  test(
    'bubbleSort([3, 7, 9, 10, 6, 5, 12, 4, 11, 2]) should return a sorted list.',
    () {
      final list = [3, 7, 9, 10, 6, 5, 12, 4, 11, 2];
      bubbleSort(list);
      expect(list, [2, 3, 4, 5, 6, 7, 9, 10, 11, 12]);
    },
  );
}
