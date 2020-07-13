import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
//import 'input_page.dart';

// class Calculaterz extends InputPage{
//     double resulta;

//  double calculate(age, weight){
//    return resulta = age + weight;
//  }
// }

class ResultsPage extends StatelessWidget {


ResultsPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});

  final String bmiResult; 
  final String resultText ;
  final String interpretation;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your results',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActivecardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kresultTextStyle,
                      ),
                    Text(
                      bmiResult,
                      style:kbmiTextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
             buttonTitle: 'ReCalculate')
          ],
        ));
  }
}
