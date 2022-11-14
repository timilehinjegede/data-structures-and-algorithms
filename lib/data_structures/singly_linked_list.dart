class Node<T> {
  Node({
    required this.value,
    this.next,
  });

  T value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> extends Iterable<E> {
  Node<E>? head;
  Node<E>? tail;

  @override
  bool get isEmpty => head == null;

  // adds an element at the front of the list -> head-first insertion
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  // adds an element at the end of the list -> tail-end insertion
  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }

    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  // gets the node at the given index.
  // returns null if no node is found at the given index
  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex = currentIndex + 1;
    }

    return currentNode;
  }

  // add a value after a particular node in the linked list
  void insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
    }
    node.next = Node(value: value, next: node.next);
  }

  // removes the value at the beginning of the linked list
  E? pop() {
    if (isEmpty) return null;

    final nodeToPop = head?.value;
    head = head?.next;

    if (isEmpty) {
      tail = null;
    }

    return nodeToPop;
  }

  // removes the value at the end of the linked list
  E? removeLast() {
    if (head?.next == null) return pop();

    var current = head;

    while (current?.next != tail) {
      current = current!.next;
    }

    final lastNode = tail?.value;
    tail = current;
    tail?.next = null;

    return lastNode;
  }

  // removes the value after a given node in the linked list
  E? removeAfter(Node<E> node) {
    final nodeToRemove = node.next?.value;

    if (node.next == tail) {
      tail = node;
    }

    node.next = node.next?.next;

    return nodeToRemove;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty linked list';
    return head.toString();
  }

  @override
  Iterator<E> get iterator => _LinkedListIterator(this);
}

class _LinkedListIterator<E> implements Iterator<E> {
  _LinkedListIterator(LinkedList<E> linkedList) : _linkedList = linkedList;

  final LinkedList<E> _linkedList;

  Node<E>? _currentNode;
  bool _isFirstPass = true;

  @override
  E get current => _currentNode!.value;

  @override
  bool moveNext() {
    if (_linkedList.isEmpty) return false;

    if (_isFirstPass) {
      _currentNode = _linkedList.head;
      _isFirstPass = false;
    } else {
      _currentNode = _currentNode?.next;
    }

    return _currentNode != null;
  }
}
