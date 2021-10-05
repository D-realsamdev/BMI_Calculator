import 'dart:math';

class BmiBrain{
  BmiBrain({this.height,this.weight});

  final int height;
  final int weight;
  
  double _bmi;

  String calculateBmi(){
    double _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

   String getBmiResult(){
     if (_bmi > 30){
       return 'Obese';
     }else if (_bmi >=30){
       return 'Overweight';
     }else if (_bmi >= 18.5){
       return 'Normal';
     }else {
       return 'Underweight';
     }
   }

   String getInterpretation(){
    if (_bmi >=30){
       return 'You have Higher than Noraml body Weight. Try to exercise more.';
     }else if (_bmi >= 18.5){
       return 'Your body Weight is Noraml. Good health Condition.';
     }else {
       return 'Your body Weight is Exersperating. Try to eat a little bit more.';
     }
   }
}