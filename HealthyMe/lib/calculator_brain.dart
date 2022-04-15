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
    if (_bmi >= 40) {
      return 'Obesity class 3';
    } else if (_bmi >= 35.0) {
      return 'Obesity class 2';
    } else if (_bmi >= 30.0) {
      return 'Obesity class 1';
    } else if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 40) {
      return 'You have too much fat in your body that can cause many issue in the body. Need basic health checkup. The most important strategies for preventing obesity are healthy eating behaviors, regular physical activity, and reduced sedentary activity (such as watching television and videotapes, and playing computer games).';
    } else if (_bmi >= 35.0) {
      return 'You have too much fat in your body that can cause many issue in the body. Need basic health checkup.';
    } else if (_bmi >= 30.0) {
      return 'Your weight is too much higher than normal body weight. Try to exercise and diet.';
    } else if (_bmi >= 25.0) {
      return 'Your weight is higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'Your weight is normal body weight. Good job!';
    } else {
      return 'Your weight is lower than normal body weight. You can eat a bit more.';
    }
  }
}