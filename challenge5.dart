Node? reverseLinkedList(Node? head) {
  Node? prev = null;
  Node? current = head;
  Node? next;

  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  return prev;
}

void main() {
  // Assume you have a linked list, e.g., 1 -> 2 -> 3 -> 4
  Node head = Node(1);
  head.next = Node(2);
  head.next?.next = Node(3);
  head.next?.next?.next = Node(4);

  Node? reversedHead = reverseLinkedList(head);
  printInReverse(reversedHead);  // Output: 4 3 2 1
}
