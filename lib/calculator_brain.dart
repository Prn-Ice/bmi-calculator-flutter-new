import 'dart:math';

import 'constants.dart';

class CalculatorBrain {
  final double height;
  final int weight;
  double _bmi;
  double get bmi => _bmi;
//  TODO value and recommendation should come from map or other data structure
//  eg Map of lists
  Map<String, List<String>> weightStats = {
    'Overweight': [
      'Overweight',
      'You have a higher than normal body weight. Try to exercise more'
    ],
    'Normal': ['Normal', 'You have a normal body weight. Good job'],
    'Underweight': [
      'Underweight',
      'You have a lower than normal body weight. You can eat more'
    ]
  };

  CalculatorBrain({this.height, this.weight});

  List<String> getBMIValueAndRecommendation() {
    if (bmi >= 25) {
      return weightStats['Overweight'];
    } else if (bmi > 18.5) {
      return weightStats['Normal'];
    } else
      return weightStats['Underweight'];
  }

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  List cmToFeetInches(double heightInCm) {
    double inchesInFeet;
    double cmInInches;

    int displayedFeet;
    int displayedInches;

    cmInInches = heightInCm / kOneCmInInches;
    inchesInFeet = cmInInches / kOneFtInInches;

    displayedInches = (cmInInches % kOneFtInInches).floor();
    displayedFeet = inchesInFeet.floor();

    /*String result = displayedInches == 0
        ? '$displayedFeet'
        : '$displayedFeet.$displayedInches';*/

    return [displayedFeet.toString(), displayedInches.toString()];
  }
}
