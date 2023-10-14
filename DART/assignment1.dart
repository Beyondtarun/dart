//q1. find factor

// import 'dart:io';

// main() {
//   stdout.write("ENTER NUMBER: ");
//   int a = int.parse(stdin.readLineSync()!);
//   List<int> Factors = [];
//   for (int i = 1; i <= a; i++) {
//     if (a % i == 0) {
//       Factors.add(i);
//     }
//   }
//   print("factors are: $Factors");
// }

//q2.
// import 'dart:io';

// void main() {
//   stdout.write("Enter a number: ");

//   int number = int.parse(stdin.readLineSync()!);
//   List<int> primeFactors = [];
//   print("Prime factors of $number are: ");
//   for (int i = 2; i <= number; i++) {
//     while (number % i == 0) {
//       primeFactors.add(i);
//       number = number ~/ i;
//     }
//   }
//   print("prime factors are: $primeFactors");
// }

//Q3.
import 'dart:io';

main() {
  stdout.write("ENTER NUMBER: ");
  int num = int.parse(stdin.readLineSync()!);

  int count = 0;
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      count++;
    }
  }
  stdout.write("factor of $num is $count");
}
