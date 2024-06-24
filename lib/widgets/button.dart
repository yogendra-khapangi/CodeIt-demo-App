import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  double? height;
  double? width;
  Color color;
  Color textColor;
  String? text;
  Color borderColor;

  Button(
      {super.key,
      @required this.height,
      @required this.width,
      required this.color,
      @required this.text,
      required this.borderColor,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          "$text",
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
