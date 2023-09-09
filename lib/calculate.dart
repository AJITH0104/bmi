import 'dart:math';

class calciii{
  //  late int height;
  //  late int weight;
  //
  // calciii({required height,required weight}) {
  //   // TODO: implement calciii
  //   this.height=height;
  //   this.weight=weight;
  // }
  //

  late double bmi;

  String calculateBMI(int height,int weight) {
    bmi = (weight! / pow(height! / 100, 2))!;
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}