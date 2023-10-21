// // // // //q1. find factor

// // // // import 'dart:io';

// // // // main() {
// // // //   stdout.write("ENTER NUMBER: ");
// // // //   int a = int.parse(stdin.readLineSync()!);
// // // //   List<int> Factors = [];
// // // //   for (int i = 1; i <= a; i++) {
// // // //     if (a % i == 0) {
// // // //       Factors.add(i);
// // // //     }
// // // //   }
// // // //   print("factors are: $Factors");
// // // // }

// // // //q2.
// // // import 'dart:io';

// // // void main() {
// // //   stdout.write("Enter a number: ");

// // //   int number = int.parse(stdin.readLineSync()!);
// // //   List<int> primeFactors = [];
// // //   print("Prime factors of $number are: ");
// // //   for (int i = 2; i <= number; i++) {
// // //     while (number % i == 0) {
// // //       primeFactors.add(i);
// // //       number = number ~/ i;
// // //     }
// // //   }
// // //   print("prime factors are: $primeFactors");
// // // }

// // // //Q3.
// // // import 'dart:io';

// // // main() {
// // //   stdout.write("ENTER NUMBER: ");
// // //   int num = int.parse(stdin.readLineSync()!);

// // //   int count = 0;
// // //   for (int i = 1; i <= num; i++) {
// // //     if (num % i == 0) {
// // //       count++;
// // //     }
// // //   }
// // //   stdout.write("factor of $num is $count");
// // // }
// // import 'dart:io';

// // void main() {
// //   print("Enter a list of numbers separated by spaces:");
// //   String input = stdin.readLineSync() ?? '';

// //   List<int> numbers = input
// //       .split(' ')
// //       .map((str) => int.tryParse(str) ?? 0) // Parse input to integers
// //       .toList();

// //   List<int> reversedNumbers = reverseDigitsInList(numbers);

// //   print("Reversed List: $reversedNumbers");
// // }

// // List<int> reverseDigitsInList(List<int> list) {
// //   List<int> reversedList = [];

// //   for (int number in list) {
// //     int reversedNumber = reverseDigits(number);
// //     reversedList.add(reversedNumber);
// //   }

// //   return reversedList;
// // }

// // int reverseDigits(int number) {
// //   int reversed = 0;

// //   while (number != 0) {
// //     int digit = number % 10;
// //     reversed = reversed * 10 + digit;
// //     number ~/= 10;
// //   }

// //   return reversed;
// // // }
// // bool checkNumberInPairs(List<int> numbers, int target) {
// //   for (int i = 0; i < numbers.length - 1; i++) {
// //     if (numbers[i] != target && numbers[i + 1] != target) {
// //       return false;
// //     }
// //   }
// //   return true;
// // }

// // void main() {
// //   List<int> numbers = [1, 2, 2, 3, 3, 2, 2, 1];
// //   int target = 2;

// //   bool result = checkNumberInPairs(numbers, target);

// //   if (result) {
// //     print("$target appears in every pair of adjacent integers.");
// //   } else {
// //     print("$target does not appear in every pair of adjacent integers.");
// //   }
// // }

// //
// class Mobile {
//   String brand;
//   String color;
//   int camera;

//   Mobile(this.brand, this.color, this.camera);

//   void printDetails() {
//     print('Mobile Details:');
//     print('Brand: $brand');
//     print('Color: $color');
//     print('Camera: $camera MP');
//     print('--------------------------');
//   }
// }

// void main() {
//   // Creating three Mobile objects with initialized values
//   Mobile mobile1 = Mobile('Samsung', 'Black', 12);
//   Mobile mobile2 = Mobile('Apple', 'Silver', 16);
//   Mobile mobile3 = Mobile('Google', 'White', 20);

//   // Printing details of each mobile object
//   mobile1.printDetails();
//   mobile2.printDetails();
//   mobile3.printDetails();
// }
//

// import 'dart:io';

// void main() {
//   print("Enter a number:");
//   var input = int.parse(stdin.readLineSync()!);

//   var words = convertToWords(input);
//   print("Output: $words");
// }

// String convertToWords(int number) {
//   var units = [
//     "",
//     "One",
//     "Two",
//     "Three",
//     "Four",
//     "Five",
//     "Six",
//     "Seven",
//     "Eight",
//     "Nine"
//   ];

//   var teens = [
//     "Ten",
//     "Eleven",
//     "Twelve",
//     "Thirteen",
//     "Fourteen",
//     "Fifteen",
//     "Sixteen",
//     "Seventeen",
//     "Eighteen",
//     "Nineteen"
//   ];

//   var tens = [
//     "",
//     "",
//     "Twenty",
//     "Thirty",
//     "Forty",
//     "Fifty",
//     "Sixty",
//     "Seventy",
//     "Eighty",
//     "Ninety"
//   ];

//   var numToString = number.toString();
//   var length = numToString.length;

//   if (length == 1) {
//     return units[number];
//   } else if (length == 2) {
//     if (number < 20) {
//       return teens[number - 10];
//     } else {
//       return tens[number ~/ 10] +
//           (number % 10 != 0 ? " " + units[number % 10] : "");
//     }
//   } else if (length == 3) {
//     return units[number ~/ 100] +
//         " Hundred" +
//         (number % 100 != 0 ? " " + convertToWords(number % 100) : "");
//   } else {
//     return "Number out of range";
//   }
// }
import 'dart:io';

void main() {
  print("Enter a decimal number:");
  var decimalNumber = int.parse(stdin.readLineSync()!);

  var binaryEquivalent = convertToBinary(decimalNumber);
  print("Binary Equivalent: $binaryEquivalent");
}

String convertToBinary(int number) {
  if (number == 0) {
    return '0';
  }

  String binary = '';
  while (number > 0) {
    var remainder = number % 2;
    binary = '$remainder$binary';
    number ~/= 2;
  }

  return binary;
}
