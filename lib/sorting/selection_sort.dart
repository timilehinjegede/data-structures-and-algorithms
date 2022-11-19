import 'package:dart_algorithms/sorting/swapper.dart';

void selectionSort<E extends Comparable>(List<E> list) {
  final n = list.length;

  for (var i = 0; i < n; i++) {
    var minIndex = i;

    for (var j = i + 1; j < n; j++) {
      if (list[minIndex].compareTo(list[j]) > 0) {
        minIndex = j;
      }
    }

    list.swap(minIndex, i);
  }
}
