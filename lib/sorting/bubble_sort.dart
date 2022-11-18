import 'package:dart_algorithms/sorting/swapper.dart';

void bubbleSort<E extends Comparable>(List<E> list) {
  final n = list.length;

  for (var i = 0; i < n - 1; i++) {
    var swapped = false;

    for (var j = 0; j < n - 1 - i; j++) {
      if (list[j].compareTo(list[j + 1]) > 0) {
        list.swap(j, j + 1);
        swapped = true;
      }
    }

    if (!swapped) break;
  }
}
