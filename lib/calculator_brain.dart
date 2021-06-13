import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi <= 18) {
      return 'Дефицит массы тела';
    } else if (_bmi >= 18.1 && _bmi < 25) {
      return 'Нормальный вес';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'Избыточный вес';
    } else if (_bmi >= 30 && _bmi <= 34.9) {
      return 'Повышенный вес';
    } else
      (_bmi >= 35);
    return 'Кретическая масса тела!';
  }

  String getInterpretation() {
    if (_bmi <= 18) {
      return 'Увеличить вес до критерия нормальной массы тела';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'У вас нормальная масса тела. Отличная работа!';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'У вас повышенный вес. Надо бы сбросить пару килограммчиков!';
    } else if (_bmi >= 30 && _bmi <= 34.9) {
      return 'У вас высокий процент содержания жира. Запишитесь к диетологу';
    } else
      (_bmi >= 35);
    return 'У вас кретическая масса тела! Пора молиться!';
  }
}
