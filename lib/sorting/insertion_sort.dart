void insertionSort<E extends Comparable>(List<E> list) {
  final n = list.length;

  for (var i = 1; i < n; i++) {
    final key = list[i];
    var j = i - 1;

    while (j >= 0 && key.compareTo(list[j]) < 0) {
      list[j + 1] = list[j];
      j = j - 1;
    }

    list[j + 1] = key;
  }
}
