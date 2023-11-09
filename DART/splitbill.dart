import 'dart:io';

int split(int a, int b) {
  int result;
  result = a ~/ b;
  return result;
}

main() {
  int amount, persons;
  print("enter amount:");
  amount = int.parse(stdin.readLineSync()!);
  print("enter number of persons:");
  persons = int.parse(stdin.readLineSync()!);

  int result = split(amount, persons);
  print("amount person is: ${result}");
}
