import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());

  double _bmiResult = 0.0;
  String _message = '';
  double get bmiResult => _bmiResult;
  String get message => _message;
  void calculateBmi({
    required int height,
    required int weight,
    required int age,
    required bool isMale,
  }) {
    _bmiResult = weight / ((height / 100) * (height / 100));
    if (_bmiResult < 18.5) {
      _message = "Underweight";
    } else if (_bmiResult >= 18.5 && _bmiResult < 25) {
      _message = "Normal";
    } else if (_bmiResult >= 25 && _bmiResult < 30) {
      _message = "Overweight";
    } else {
      _message = "Obese";
    }

    emit(BmiCalculatedSuccess());
  }
}
