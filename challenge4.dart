Node? findMiddle(Node? head) {
  if (head == null) return null;

  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  return slow;
}

void main() {
  // Assume you have a linked list, e.g., 1 -> 2 -> 3 -> 4
  Node head = Node(1);
  head.next = Node(2);
  head.next?.next = Node(3);
  head.next?.next?.next = Node(4);

  Node? middle = findMiddle(head);
  print(middle?.data);  // Output: 3
}
