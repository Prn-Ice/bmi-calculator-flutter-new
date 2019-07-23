import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class HeightValue extends StatelessWidget {
  HeightValue({@required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Text(CalculatorBrain().cmToFeetInches(height)[0], style: kBoldText),
        Text(
          'ft' + ' ',
          style: kGreyText,
        ),
        Text(CalculatorBrain().cmToFeetInches(height)[1], style: kBoldText),
        Text(
          'in',
          style: kGreyText,
        ),
      ],
    );
  }
}
