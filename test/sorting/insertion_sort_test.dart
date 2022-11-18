import 'package:dart_algorithms/sorting/insertion_sort.dart';
import 'package:test/test.dart';

void main() {
  test('insertionSort([9, 5, 1, 4, 3]) should return a sorted list.', () {
    final list = [9, 5, 1, 4, 3];
    insertionSort(list);
    expect(list, [1, 3, 4, 5, 9]);
  });

  test('insertionSort([8, 5, 7, 3, 2]) should return a sorted list.', () {
    final list = [8, 5, 7, 3, 2];
    insertionSort(list);
    expect(list, [2, 3, 5, 7, 8]);
  });

  test(
    'insertionSort([6, 8, 12, 14, 18, 20, 10]) should return a sorted list.',
    () {
      final list = [6, 8, 12, 14, 18, 20, 10];
      insertionSort(list);
      expect(list, [6, 8, 10, 12, 14, 18, 20]);
    },
  );
}
