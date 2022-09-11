import 'dart:io';

void main() {
  print('Digite o valor do cateto oposto: ');
  double catOp = double.parse(stdin.readLineSync()!);
  print('Digite o valor do cateto adjacente: ');
  double catAd = double.parse(stdin.readLineSync()!);

  double hipotenusa = (catOp * catOp) + (catAd * catAd) ;

  print("Hipotenusa é igual a ${hipotenusa}.");
}