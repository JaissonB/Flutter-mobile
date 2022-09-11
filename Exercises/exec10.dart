import 'dart:io';

void main() {
  double valDiario = 20 - 20 * 0.08;
  print('Digite os dias trabalhados do encanador: ');
  int dias = int.parse(stdin.readLineSync()!);

  print((("Deverá ser pago RS${(dias * valDiario).toStringAsFixed(2)} ao encanador.")));
}