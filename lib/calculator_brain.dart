import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  double intbmi() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  String getResult() {
    if (intbmi() >= 25.0) {
      return 'OVERWEIGHT';
    } else if (intbmi() > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (intbmi() >= 25.0) {
      return 'you are OVERWEIGHT, try exercising and get fit ';
    } else if (intbmi() > 18.5) {
      return 'NORMAL, and  that\'s great, You are all healthy.';
    } else {
      return 'UNDERWEIGHT,You need to eat more';
    }
  }
}
