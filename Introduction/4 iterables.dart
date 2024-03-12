void main() {
  final numbers = [1, 10, 10, 9, 6, 6, 4];
  final revertnums = numbers.reversed;
  final numsGreaterThan6 = numbers.where((num) {
    return num > 6;
  });
  print(numbers);
  print("Length:\n ${numbers.length}");
  print("Index 0:\n ${numbers[0]}");
  print("First (index 0):\n ${numbers.first}");
  print("Last:\n ${numbers.last}");
  print("Reversed return Iterable superclass:\n ${revertnums}");
  print("To Set subclass:\n ${revertnums.toSet()}");
  print("To List subclass:\n ${revertnums.toList()}");
  print("Iterable of nums > 6:\n ${numsGreaterThan6}");
}