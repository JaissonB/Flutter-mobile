import 'dart:io';

void main() {
  print('Digite um numero inteiro qualquer: ');
  int number = int.parse(stdin.readLineSync()!);
  print(number * number);
}
