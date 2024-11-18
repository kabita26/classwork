import 'dart:io';

void main() {
  print('Enter first number:');
  int num1 = int.parse(stdin.readLineSync()!);
  
  print('Enter second number:');
  int num2 = int.parse(stdin.readLineSync()!);
  
  print('Enter operator (+, -, *, /):');
  String operator = stdin.readLineSync()!;
  
  switch (operator) {
    case '+':
      print('Result: ${num1 + num2}');
      break;
    case '-':
      print('Result: ${num1 - num2}');
      break;
    case '*':
      print('Result: ${num1 * num2}');
      break;
    case '/':
      if (num2 != 0) {
        print('Result: ${num1 / num2}');
      } else {
        print('Division by zero is not allowed.');
      }
      break;
    default:
      print('Invalid operator');
  }
}
