import 'dart:math';

class CalculatorBrain{
  
  CalculatorBrain({this.height,this.weight});

  final int height;
  final int weight;

  double _bmi;

//* first i process c _bmi
 String calculateBMI(){
  _bmi = weight / pow(height/100, 2);
   return _bmi.toStringAsFixed(1);

 }

//* 2nd kuhaon value ni _bmi
String getResults(){
  if (_bmi >=25){
    return 'Overweight ka';
  }else if (_bmi > 18.5) {
   return 'Normal';
  }else {
    return 'Underweight';
  }
}

 String getInterpretation(){
    if (_bmi >=25){
    return 'you have a higher than normal body weight, try to exercise more';
  }else if (_bmi > 18.5) {
   return 'You have a normal body weight Good job!';
  }else {
    return 'eat more!';
  }

 }
}