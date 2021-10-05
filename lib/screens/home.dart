import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/icon_button.dart';
import 'package:bmi_calculator/bmi_brain.dart';

enum Gender{
  male,
  female
}

class HomePage extends StatefulWidget {
@override
_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender gender;
  int _height = 180;
  int weight = 50;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar text
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Color(0xffA0A6CB)
          ),
          ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      //app body
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  //male card
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        coloor: gender == Gender.male ? Color(0xFF1D1F33) :  Color(0xFF111328),
                        cardChild: IconContent(icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  //Female card
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        coloor: gender == Gender.female ? Color(0xFF1D1F33) :  Color(0xFF111328),
                        cardChild: IconContent(icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                    ),
                    Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        coloor: gender == Gender.female ? Color(0xFF1D1F33) :  Color(0xFF111328),
                        cardChild: IconContent(icon: FontAwesomeIcons.venusMars,
                          label: 'OTHERS',
                        ),
                      ),
                    ),
                    ),
                ],
              )
          ),

          //Card colors
          Expanded(
            child: ReusableCard(
                coloor:Color(0xFF1D1F33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: khLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text(
                            _height.toString(),
                          style: intTextStyle,
                          ),
                          Text('cm')
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xff2CDFFA),
                          activeTrackColor: Color(0xff2B57B2),
                          inactiveTrackColor: Color(0xff13131D),
                          trackHeight: 0.5,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                        ),
                        child: Slider(
                          value: _height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          label: '$_height',
                           onChanged: (double newValue){
                             setState(() {
                               _height = newValue.round();
                             });
                           }
                          ),
                      )
                  ],
                ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      coloor:Color(0xFF1D1F33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',style: khLabelTextStyle,),
                          Text(weight.toString(),style: intTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed:(){
                                  setState(() {
                                    weight--;
                                  });
                                }
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              CustomIconButton(
                                icon: FontAwesomeIcons.plus,
                                 onPressed:(){
                                  setState(() {
                                    weight++;
                                  });
                                }
                              ),
                            ]
                          )
                        ],
                      ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    coloor:Color(0xFF1D1F33),
                     cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',style: khLabelTextStyle,),
                          Text(age.toString(),style: intTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(
                                icon: FontAwesomeIcons.minus,
                                 onPressed:(){
                                  setState(() {
                                    age--;
                                  });
                                }
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              CustomIconButton(
                                icon: FontAwesomeIcons.plus,
                                 onPressed:(){
                                  setState(() {
                                    age++;
                                  });
                                }
                              ),
                            ]
                          )
                        ],
                      ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
                buttonTitle: 'CALCULATE YOUR BMI',
                onTap: (){
                  BmiBrain cal = BmiBrain(weight: weight, height: _height);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          bmiResult: cal.calculateBmi(),
                          resultText: cal.getBmiResult(),
                          resultInterpretation: cal.getInterpretation(),
                        )
                        ),
                    );
                  },
          ),
        ],
      ),
    );
  }
}

