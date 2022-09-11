import 'dart:io';

void main() {
  print('Digite a quilometragem atual: ');
  double kmAtual = double.parse(stdin.readLineSync()!);
  print('Digite a quilometragem anterior: ');
  double kmAnterior = double.parse(stdin.readLineSync()!);
  print('Digite a quantidade de litros consumida: ');
  double litrosConsumidos = double.parse(stdin.readLineSync()!);

  double kmPorHora = (kmAtual - kmAnterior) / litrosConsumidos;

  print("Taxa de consumo: RS${kmPorHora}");
}