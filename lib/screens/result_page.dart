import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

//Passing arguments for named routes proved problematic
//cause these routes are defined in main but the arguments
//have to be passed in the input page
// Creating an arguments class like this allowed us to declare the
// route in main without specifying arguments and also to specify
// the arguments later when the route was being called in the input page
class ResultPageArguments {
  final String bmiResult;
  final String bmi;
  final String recommendation;

  ResultPageArguments(
      {@required this.bmiResult,
      @required this.bmi,
      @required this.recommendation});
}

class ResultPage extends StatelessWidget {
  static const routeName = '/result';

  @override
  Widget build(BuildContext context) {
    final ResultPageArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    args.bmiResult,
                    style: kGreenText,
                  ),
                  Text(
                    args.bmi,
                    style: kVeryBoldText,
                  ),
                  Text(
                    args.recommendation,
                    textAlign: TextAlign.center,
                    style: kNormalText,
                  ),
                ],
              ),
              color: kActiveCardColor,
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
