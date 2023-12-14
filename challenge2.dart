bool isBalanced(String input) {
  int count = 0;
  for (var char in input.runes) {
    if (char == '(') {
      count++;
    } else if (char == ')') {
      count--;
      if (count < 0) {
        return false;
      }
    }
  }
  return count == 0;
}

void main() {
  String expression = "((a + b) * (c - d))";
  print(isBalanced(expression));  // Output: true
}
