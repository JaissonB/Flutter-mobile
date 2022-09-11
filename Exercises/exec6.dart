import 'dart:io';

void main() {
  const double pi = 3.142526;

  print('Digite o raio do cilindro: ');
  double ratio = double.parse(stdin.readLineSync()!);
  print('Digite a altura do cilindro: ');
  double heigth = double.parse(stdin.readLineSync()!);

  print((pi * ratio * ratio * heigth).toStringAsFixed(2));
}