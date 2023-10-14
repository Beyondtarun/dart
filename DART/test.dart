// import 'dart:io';

// int calculateSumOfDigits(int number) {
//   int sum = 0;
//   while (number > 0) {
//     sum += number % 10;
//     number ~/= 10; //performs int division
//   }
//   return sum;
// }

// void main() {
//   print("Enter an integer: ");
//   int num = int.parse(stdin.readLineSync()!);

//   int sum = calculateSumOfDigits(num);

//   print("Sum of the digits of $num is $sum.");
// }
// import 'dart:io';

// void main() {
//   stdout.write("Enter the number of rows: ");
//   int numRows = int.parse(stdin.readLineSync() ?? '');

//   for (int i = 1; i <= numRows; i++) {
//     for (int j = 1; j <= i; j++) {
//       stdout.write("* ");
//     }
//     stdout.write("\n");
//   }
// }

// import 'dart:io';

// void main() {
//   stdout.write("Enter the number of rows:");
//   int numRows = int.parse(stdin.readLineSync() ?? '');

//   for (int i = 1; i <= numRows; i++) {
//     for (int j = 1; j <= i; j++) {
//       stdout.write("$j ");
//     }
//     stdout.write("\n");
//   }
// }
// import 'dart:io';

// void main() {
//   stdout.write("Enter the number of rows:");
//   int numRows = int.parse(stdin.readLineSync() ?? '');

//   for (int i = 1; i <= numRows; i++) {
//     for (int j = 1; j <= numRows - i; j++) {
//       stdout.write("  ");
//     }
//     for (int j = 1; j <= i; j++) {
//       stdout.write("$j ");
//     }
//     for (int j = i - 1; j >= 1; j--) {
//       stdout.write("$j ");
//     }
//     stdout.write("\n");
//   }
// }

// import 'dart:io';

// void main() {
//   stdout.write("Enter a string: ");
//   String input = stdin.readLineSync() ?? '';
//   input = input.toUpperCase();

//   int length = input.length;
//   int currentIndex = 0;

//   for (int i = 1; currentIndex < length; i++) {
//     for (int j = 0; j < i && currentIndex < length; j++) {
//       stdout.write(input[currentIndex] + ' ');
//       currentIndex++;
//     }
//     stdout.write('\n');
//   }
// }
// import 'dart:io';

// void main() {
//   stdout.write("Enter the number of rows:");
//   int rows = int.parse(stdin.readLineSync() ?? '');

//   for (int i = 0; i < rows; i++) {
//     for (int space = 1; space < rows - i; ++space) {
//       stdout.write("  ");
//     }

//     int coef = 1;
//     for (int j = 0; j <= i; j++) {
//       if (j == 0 || i == 0) {
//         coef = 1;
//       } else {
//         coef = coef * (i - j + 1) ~/ j;
//       }

//       stdout.write("${coef.toString().padLeft(4)}");
//     }

//     stdout.write("\n");
//   }
// }
import 'dart:io';

void main() {
  stdout.write("Enter the number of rows you want to print: ");
  int row = int.parse(stdin.readLineSync() ?? '');

  if (row % 2 == 0) {
    row++; // Ensure odd number of rows
  }

  int space = row - 1;

  for (int j = 1; j <= row; j++) {
    for (int i = 1; i <= space; i++) {
      stdout.write(" ");
    }
    space--;

    for (int i = 1; i <= 2 * j - 1; i++) {
      stdout.write("*");
    }

    stdout.write("\n");
  }

  space = 1;
  for (int j = 1; j <= row - 1; j++) {
    for (int i = 1; i <= space; i++) {
      stdout.write(" ");
    }
    space++;

    for (int i = 1; i <= 2 * (row - j) - 1; i++) {
      stdout.write("*");
    }

    stdout.write("\n");
  }
}
