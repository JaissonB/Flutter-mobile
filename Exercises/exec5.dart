import 'dart:io';

void main() {
    final day = DateTime.now().day;
    final month = DateTime.now().month;
    final year = DateTime.now().year;

    String? formatDate (partOfDate) {
        return (partOfDate < 10) ? "0${part.toString()}" : "${part.toString()}";
    }

    print("${formatDate(day)}/${formatDate(month)}/$year");
}