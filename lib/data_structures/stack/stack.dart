class Stack<E> {
  Stack() : _storage = <E>[];

  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  final List<E> _storage;

  // push element to a stack
  void push(E element) => _storage.add(element);

  // pop an element from a stack
  E pop() => _storage.removeLast();

  // get the element on top of the stack
  E get peek => _storage.last;

  // whether this stack is has no elements
  bool get isEmpty => _storage.isEmpty;

  // whether the stack has at least one element
  bool get isNotEmpty => _storage.isNotEmpty;

  // removes all elements in the stack
  void clear() {
    while (_storage.isNotEmpty) {
      _storage.removeLast();
    }
  }

  // whether the top element can be removed from this stack
  bool canPop() {
    return _storage.isNotEmpty;
  }

  @override
  String toString() {
    return '--- Stack Top --- \n'
        '${_storage.reversed.join('\n')}'
        '\n--- Stack End ---';
  }
}