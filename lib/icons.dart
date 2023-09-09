import 'package:flutter/material.dart';
import 'constants.dart';

class gen extends StatelessWidget {

  String t;
  IconData i;
  gen( {required this.t,required this.i}){}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          i,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(height: 15.0,),
        Text(t,style: labelstyle ,),

      ],
    );
  }
}