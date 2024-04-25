
import 'dart:io';

void main(List<String> arguments) {
  print("Entry anything:");
  String? input = stdin.readLineSync();
  print("You entered: $input");

  print("Enter a floating number:");
  double number = double.parse(stdin.readLineSync()!);
  print("The entered number is: $number");
  print("Enter an operator (+, -, *, /):");
  String operator = stdin.readLineSync()!;
  
  print("Enter another number:");
  double anotherNumber = double.parse(stdin.readLineSync()!);
  
  double result;
  
  switch(operator) {
    case '+':
      result = number + anotherNumber;
      break;
    case '-':
      result = number - anotherNumber;
      break;
    case '*':
      result = number * anotherNumber;
      break;
    case '/':
      result = number / anotherNumber;
      break;
    default:
      print("Invalid operator");
      return;
  }
  
  print("The result is: $result");
}
