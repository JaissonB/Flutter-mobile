import 'dart:io';

void main() {
  print('Digite o tempo gasto em ligação (em minutos): ');
  int minutos = int.parse(stdin.readLineSync()!);

  if (minutos <= 3) {
    print("Total a ser pago: RS1,15");
  } else {
    print("Total a ser pago: RS${(minutos - 3) * 0.26 + 1.15}");
  }
}