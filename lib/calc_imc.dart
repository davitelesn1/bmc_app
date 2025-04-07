import 'dart:math';

class CalcIMC {
  CalcIMC({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmc;

  String calcIMC() {
    _bmc = weight / pow(height / 100, 2);
    return _bmc.toStringAsFixed(1);
  }

  String obtainResult() {
    if (_bmc >= 25) {
      return "Overweight";
    } else if (_bmc > 18.5) {
      return 'Normal weight';
    } else {
      return 'Underweight';
    }
  }

  String obtainText() {
    if (_bmc >= 25) {
      return "You're overweight. Try to exercise more.";
    } else if (_bmc > 18.5) {
      return 'Excelent! Your weight is normal.';
    } else {
      return 'You\'re underweight. Try to eat more.';
    }
  }
}
