import 'dart:io';

void main() {
    print('Digite um numero qualquer: ');
    double number = double.parse(stdin.readLineSync()!);
    print(number * 2);
}