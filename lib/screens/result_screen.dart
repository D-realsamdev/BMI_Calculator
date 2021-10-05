import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({@required this.bmiResult, @required this.resultText, @required this.resultInterpretation});

  final String bmiResult;
  final String resultText;
  final String resultInterpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Your Result',
                  style: KResultTextTitle,
                ),
              )
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                coloor: Color(0xFF1D1F33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: KResultTextOutput,
                    ),
                    Text(
                      bmiResult,
                      style: kBMIStyle,
                    ),
                    Text(
                      'Normal BMI range:',
                      style: kBMINormalRangeTEXT,
                    ),
                    Text(
                      '18,5 - 25 kg/m2',
                      style: kBMINormalRangeResult,
                    ),
                    Text(
                      resultInterpretation,
                      textAlign: TextAlign.center,
                      style: kBMIResultText,
                    ),
                    GestureDetector(
                  onTap: (){},
                  child: Container(
                   child: Center(
                      child: Text(
                        'Save',
                         style: kCalculateButtonText),
                         ),
                    color: Color(0xff090C22),
                    margin: EdgeInsets.only(top: 10.0),
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
                  ],
                ),
                )
            ),
            BottomButton(
                buttonTitle: 'RE-CALCULATE YOUR BMI',
                onTap: (){
                    Navigator.pop(
                      context,
                    );
                  },
          ),
          ],
        )
    );
  }
}