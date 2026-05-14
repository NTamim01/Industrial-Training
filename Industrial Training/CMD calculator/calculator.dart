import 'dart:io';
import 'dart:math';

void main() {
  print("===== Scientific Calculator =====");

  while (true) {
    print("\nChoose Operation:");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Square Root");
    print("6. Power");
    print("7. Sin");
    print("8. Cos");
    print("9. Tan");
    print("10. Log");
    print("0. Exit");

    stdout.write("Enter choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 0) {
      print("Calculator Closed");
      break;
    }

    double a, b;

    switch (choice) {
      case 1:
        stdout.write("Enter first number: ");
        a = double.parse(stdin.readLineSync()!);

        stdout.write("Enter second number: ");
        b = double.parse(stdin.readLineSync()!);

        print("Result = ${a + b}");
        break;

      case 2:
        stdout.write("Enter first number: ");
        a = double.parse(stdin.readLineSync()!);

        stdout.write("Enter second number: ");
        b = double.parse(stdin.readLineSync()!);

        print("Result = ${a - b}");
        break;

      case 3:
        stdout.write("Enter first number: ");
        a = double.parse(stdin.readLineSync()!);

        stdout.write("Enter second number: ");
        b = double.parse(stdin.readLineSync()!);

        print("Result = ${a * b}");
        break;

      case 4:
        stdout.write("Enter first number: ");
        a = double.parse(stdin.readLineSync()!);

        stdout.write("Enter second number: ");
        b = double.parse(stdin.readLineSync()!);

        if (b != 0) {
          print("Result = ${a / b}");
        } else {
          print("Cannot divide by zero");
        }
        break;

      case 5:
        stdout.write("Enter number: ");
        a = double.parse(stdin.readLineSync()!);

        print("Result = ${sqrt(a)}");
        break;

      case 6:
        stdout.write("Enter base: ");
        a = double.parse(stdin.readLineSync()!);

        stdout.write("Enter power: ");
        b = double.parse(stdin.readLineSync()!);

        print("Result = ${pow(a, b)}");
        break;

      case 7:
        stdout.write("Enter angle in radians: ");
        a = double.parse(stdin.readLineSync()!);

        print("Result = ${sin(a)}");
        break;

      case 8:
        stdout.write("Enter angle in radians: ");
        a = double.parse(stdin.readLineSync()!);

        print("Result = ${cos(a)}");
        break;

      case 9:
        stdout.write("Enter angle in radians: ");
        a = double.parse(stdin.readLineSync()!);

        print("Result = ${tan(a)}");
        break;

      case 10:
        stdout.write("Enter number: ");
        a = double.parse(stdin.readLineSync()!);

        print("Result = ${log(a)}");
        break;

      default:
        print("Invalid Choice");
    }
  }
}