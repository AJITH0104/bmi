
import 'package:flutter/material.dart';

class card extends StatelessWidget {
  Color colourneed;
  final Widget? cardChild;
  final VoidCallback? onpress;
  card({required this.colourneed,this.cardChild,this.onpress});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colourneed,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onTap: onpress,
    );
  }
}
