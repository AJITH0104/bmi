import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter/cupertino.dart';
import 'card.dart';
import 'package:bmi/calculate.dart';
class result extends StatelessWidget {
  result(
      {required this.interpretation,
        required this.bmiResult,
        required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Container(child: Text('Your Result',style: ktitletxt,))),
          Expanded(
            flex: 9,
            child:card(
              colourneed: activecolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(child: Text(resultText,style: TextStyle(color: Color(0xFF24D876),fontSize: 40.0,fontWeight: FontWeight.bold),)),
                  Center(child: Text(bmiResult,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 100.0),),),
                  Center(child: Text(
                    interpretation,style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20.0),
                  ),),

                ],
              ),
            ),
          ),
          FilledButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child:Text('Recalculate',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20.0,fontWeight: FontWeight.bold),),
            style:  ButtonStyle(
              backgroundColor: MaterialStateProperty.all(CupertinoColors.destructiveRed),
              fixedSize: MaterialStateProperty.all(Size.fromWidth(300.0))
            ),
          ),
        ],
      )
    );
  }
}
