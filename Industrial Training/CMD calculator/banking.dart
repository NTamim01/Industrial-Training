import 'dart:io';

// Parent Class
class BankAccount {
  // Private Variables
  String _accountHolder;
  int _accountNumber;
  double _balance;

  // Constructor
  BankAccount(this._accountHolder, this._accountNumber, this._balance);

  // Deposit Method
  void deposit(double amount) {
    _balance += amount;
    print("\nDeposited: \$${amount}");
    print("Current Balance: \$${_balance}");
  }

  // Withdraw Method
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;

      print("\nWithdrawn: \$${amount}");
      print("Remaining Balance: \$${_balance}");
    } else {
      print("\nInsufficient Balance!");
    }
  }

  // Display Method
  void displayInfo() {
    print("\n===== ACCOUNT INFO =====");
    print("Account Holder: $_accountHolder");
    print("Account Number: $_accountNumber");
    print("Balance: \$$_balance");
  }
}

// Child Class
class SavingsAccount extends BankAccount {
  double interestRate;

  // Constructor
  SavingsAccount(
    String holder,
    int number,
    double balance,
    this.interestRate,
  ) : super(holder, number, balance);

  // Interest Method
  void addInterest() {
    print("Interest Rate: $interestRate%");
  }
}

void main() {
  // User Input

  print("Enter Account Holder Name:");
  String name = stdin.readLineSync()!;

  print("Enter Account Number:");
  int number = int.parse(stdin.readLineSync()!);

  print("Enter Initial Balance:");
  double balance = double.parse(stdin.readLineSync()!);

  print("Enter Interest Rate:");
  double rate = double.parse(stdin.readLineSync()!);

  // Create Object
  SavingsAccount account =
      SavingsAccount(name, number, balance, rate);

  // Menu
  while (true) {
    print("\n===== BANK MENU =====");
    print("1. Display Info");
    print("2. Deposit Money");
    print("3. Withdraw Money");
    print("4. Show Interest Rate");
    print("5. Exit");

    print("\nEnter Your Choice:");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        account.displayInfo();
        break;

      case 2:
        print("Enter Deposit Amount:");
        double depositAmount =
            double.parse(stdin.readLineSync()!);

        account.deposit(depositAmount);
        break;

      case 3:
        print("Enter Withdraw Amount:");
        double withdrawAmount =
            double.parse(stdin.readLineSync()!);

        account.withdraw(withdrawAmount);
        break;

      case 4:
        account.addInterest();
        break;

      case 5:
        print("\nThank You for Using Banking System!");
        return;

      default:
        print("\nInvalid Choice!");
    }
  }
}