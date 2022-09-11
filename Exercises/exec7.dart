import 'dart:io';

void main() {

  print('Digite a temperatura em Fahrenheit: ');
  int fahrenheit  = int.parse(stdin.readLineSync()!);

  print(((fahrenheit - 32) / 1.8).toStringAsFixed(2));
}