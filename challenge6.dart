Node? removeAllOccurrences(Node? head, dynamic value) {
  while (head != null && head.data == value) {
    head = head.next;
  }

  Node? current = head;
  Node? prev;

  while (current != null) {
    if (current.data == value) {
      prev!.next = current.next;
    } else {
      prev = current;
    }
    current = current.next;
  }

  return head;
}

void main() {
  // Assume you have a linked list, e.g., 1 -> 2 -> 3 -> 2 -> 4
  Node head = Node(1);
  head.next = Node(2);
  head.next?.next = Node(3);
  head.next?.next?.next = Node(2);
  head.next?.next?.next?.next = Node(4);

  Node? updatedHead = removeAllOccurrences(head, 2);
  printInReverse(updatedHead);  // Output: 4 3 1
}
