class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

void printInReverse(Node? head) {
  if (head == null) return;

  printInReverse(head.next);
  print(head.data);
}

void main() {
  // Assume you have a linked list, e.g., 1 -> 2 -> 3 -> 4
  Node head = Node(1);
  head.next = Node(2);
  head.next?.next = Node(3);
  head.next?.next?.next = Node(4);

  printInReverse(head);  // Output: 4 3 2 1
}
