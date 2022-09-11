import 'dart:io';

void main() {
  print('Digite o salário atual: ');
  double salario = double.parse(stdin.readLineSync()!);

  double primeiro = salario + (salario * 0.07);
  double segundo = primeiro + (primeiro * 0.06);
  double terceiro = segundo + (segundo * 0.05);

  print("Salário no próximo ano: RS${primeiro}");
  print("Salário no segundo ano: RS${segundo}");
  print("Salário no terceiro ano: RS${terceiro}");
}