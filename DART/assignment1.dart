// // // //q1. find factor

// // // import 'dart:io';

// // // main() {
// // //   stdout.write("ENTER NUMBER: ");
// // //   int a = int.parse(stdin.readLineSync()!);
// // //   List<int> Factors = [];
// // //   for (int i = 1; i <= a; i++) {
// // //     if (a % i == 0) {
// // //       Factors.add(i);
// // //     }
// // //   }
// // //   print("factors are: $Factors");
// // // }

// // //q2.
// // import 'dart:io';

// // void main() {
// //   stdout.write("Enter a number: ");

// //   int number = int.parse(stdin.readLineSync()!);
// //   List<int> primeFactors = [];
// //   print("Prime factors of $number are: ");
// //   for (int i = 2; i <= number; i++) {
// //     while (number % i == 0) {
// //       primeFactors.add(i);
// //       number = number ~/ i;
// //     }
// //   }
// //   print("prime factors are: $primeFactors");
// // }

// // //Q3.
// // import 'dart:io';

// // main() {
// //   stdout.write("ENTER NUMBER: ");
// //   int num = int.parse(stdin.readLineSync()!);

// //   int count = 0;
// //   for (int i = 1; i <= num; i++) {
// //     if (num % i == 0) {
// //       count++;
// //     }
// //   }
// //   stdout.write("factor of $num is $count");
// // }
// import 'dart:io';

// void main() {
//   print("Enter a list of numbers separated by spaces:");
//   String input = stdin.readLineSync() ?? '';

//   List<int> numbers = input
//       .split(' ')
//       .map((str) => int.tryParse(str) ?? 0) // Parse input to integers
//       .toList();

//   List<int> reversedNumbers = reverseDigitsInList(numbers);

//   print("Reversed List: $reversedNumbers");
// }

// List<int> reverseDigitsInList(List<int> list) {
//   List<int> reversedList = [];

//   for (int number in list) {
//     int reversedNumber = reverseDigits(number);
//     reversedList.add(reversedNumber);
//   }

//   return reversedList;
// }

// int reverseDigits(int number) {
//   int reversed = 0;

//   while (number != 0) {
//     int digit = number % 10;
//     reversed = reversed * 10 + digit;
//     number ~/= 10;
//   }

//   return reversed;
// // }
// bool checkNumberInPairs(List<int> numbers, int target) {
//   for (int i = 0; i < numbers.length - 1; i++) {
//     if (numbers[i] != target && numbers[i + 1] != target) {
//       return false;
//     }
//   }
//   return true;
// }

// void main() {
//   List<int> numbers = [1, 2, 2, 3, 3, 2, 2, 1];
//   int target = 2;

//   bool result = checkNumberInPairs(numbers, target);

//   if (result) {
//     print("$target appears in every pair of adjacent integers.");
//   } else {
//     print("$target does not appear in every pair of adjacent integers.");
//   }
// }

import 'dart:io';

void main() {
  List<int> array1 = [];
  List<int> array2 = [];

  // Input for the first list
  print("Enter the elements for the first list (separated by spaces):");
  String input1 = stdin.readLineSync() ?? '';
  array1 = input1.split(' ').map((str) => int.tryParse(str) ?? 0).toList();

  // Input for the second list
  print("Enter the elements for the second list (separated by spaces):");
  String input2 = stdin.readLineSync() ?? '';
  array2 = input2.split(' ').map((str) => int.tryParse(str) ?? 0).toList();

  // Manually sort both arrays
  array1 = manualSort(array1);
  array2 = manualSort(array2);

  // Merge the sorted arrays
  List<int> result = mergeSortedArrays(array1, array2);

  print("Merged and Sorted Result: $result");
}

List<int> manualSort(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = i + 1; j < list.length; j++) {
      if (list[i] > list[j]) {
        int temp = list[i];
        list[i] = list[j];
        list[j] = temp;
      }
    }
  }
  return list;
}

List<int> mergeSortedArrays(List<int> array1, List<int> array2) {
  List<int> result = [];

  int i = 0;
  int j = 0;

  while (i < array1.length && j < array2.length) {
    if (array1[i] < array2[j]) {
      result.add(array1[i]);
      i++;
    } else {
      result.add(array2[j]);
      j++;
    }
  }

  // Add any remaining elements from both arrays
  while (i < array1.length) {
    result.add(array1[i]);
    i++;
  }

  while (j < array2.length) {
    result.add(array2[j]);
    j++;
  }

  return result;
}
