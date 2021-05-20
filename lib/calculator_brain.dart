import 'dart:math';

import 'package:flutter/material.dart';
class CalculatorBrain {
  final height;
  final weight;

  double _bmi;  // _ make variable private and can't be accessed outside its class

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi>=25.0)
      return 'Overweight';
    else if(_bmi>=18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation() {
    if(_bmi>=25.0)
      return 'You have a higher than normal body weight. Try to exercise now';
    else if(_bmi>=18.5)
      return 'You have a normal body weight. Good Job!';
    else
      return 'You have a lower than normal body weight. You can eat more';
  }
}