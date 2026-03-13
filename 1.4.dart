import 'dart:io'; //импортируем библиотеку для ввода данных

void main() {
  print('Введите первое число:');
  String? input1 = stdin.readLineSync();

  print('Введите второе число:');
  String? input2 = stdin.readLineSync();

  print('Введите оператор (+, -, *, /):');
  String? op = stdin
      .readLineSync(); //знаки вопроса использовал чтобы переменая имела в себе значение null

  if (input1 == null || input2 == null || op == null) {
    print('Некорректный ввод');
    return;
  }

  double num1 =
      double.tryParse(input1) ??
      0; //Преобразовал из строки в число или опять нуливое значение если ввели не число
  double num2 = double.tryParse(input2) ?? 0;

  if (op == '/' && num2 == 0) {
    print('Ошибка: деление на ноль');
    return;
  }

  double result;
  if (op == '+') {
    result = num1 + num2;
  } else if (op == '-') {
    result = num1 - num2;
  } else if (op == '*') {
    result = num1 * num2;
  } else if (op == '/') {
    result = num1 / num2;
  } else {
    print('Некорректный оператор');
    return;
  }

  print('Результат: $result');
}
