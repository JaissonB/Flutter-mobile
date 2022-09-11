import 'dart:io';

void main() {

  print('Valor de A: ');
  double a  = double.parse(stdin.readLineSync()!);
  print('\n');
  print('Valor de B: ');
  double b  = double.parse(stdin.readLineSync()!);
  print('\n');
  print('Valor de C: ');
  double c  = double.parse(stdin.readLineSync()!);
  print('\n');

  print('Área do triângulo: ');
  print((a*b/2).toStringAsFixed(2) + '\n');

  print('Área do círculo: ');
  print((c*c*3.1415).toStringAsFixed(2) + '\n');

  print('Área do trapézio: ');
  print((((a + b) * c) / 2).toStringAsFixed(2) + '\n');

  print('Área do quadrado: ');
  print((b*b).toStringAsFixed(2) + '\n');

  print('Área do retângulo: ');
  print((a*b).toStringAsFixed(2) + '\n');
}