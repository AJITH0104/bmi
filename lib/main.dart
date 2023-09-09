import 'package:flutter/material.dart';
import 'inputdata.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF080A1F)
        ),
        primaryColor:  Color(0xFF080A1F),
        scaffoldBackgroundColor: Color(0xFF080A1F),

      ),
      home: InputPage(),
    );
  }
}

