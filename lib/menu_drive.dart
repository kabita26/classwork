import 'dart:io';

void main() {
  bool continueLoop = true;

  do {
    print("Choose an operation:");
    print("1. Add");
    print("2. Subtract");
    print("3. Multiply");
    print("Enter your choice (1/2/3): ");
    
    String? choice = stdin.readLineSync();
    int? operation = int.tryParse(choice ?? '');
    
    if (operation == null || operation < 1 || operation > 3) {
      print("Invalid choice! Please choose a valid operation.");
      continue;
    }

    print("Enter the first number: ");
    double? num1 = double.tryParse(stdin.readLineSync() ?? '');
    
    print("Enter the second number: ");
    double? num2 = double.tryParse(stdin.readLineSync() ?? '');
    
    if (num1 == null || num2 == null) {
      print("Invalid input! Please enter valid numbers.");
      continue;
    }

    switch (operation) {
      case 1:
        print("Result: ${num1 + num2}");
        break;
      case 2:
        print("Result: ${num1 - num2}");
        break;
      case 3:
        print("Result: ${num1 * num2}");
        break;
    }

    print("Do you want to continue? (yes/no): ");
    String? userResponse = stdin.readLineSync()?.toLowerCase();
    if (userResponse != 'yes') {
      continueLoop = false;
    }
  } while (continueLoop);

  print("Thank you for using the calculator!");
}
