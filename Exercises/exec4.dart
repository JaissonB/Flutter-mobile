import 'dart:io';

void main() {
  print('Digite o primeiro numero: ');
  double number1 = double.parse(stdin.readLineSync()!);
  print('Digite o segundo numero: ');
  double number2 = double.parse(stdin.readLineSync()!);
  print('Digite o terceiro numero: ');
  double number3 = double.parse(stdin.readLineSync()!);
  print((number1 + number2 + number3) / 3);
}
