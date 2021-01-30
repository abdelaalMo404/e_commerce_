import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final Alignment alignment ;

  CustomText({this.text='', this.fontSize=14, this.textColor=Colors.black, this.alignment= Alignment.topLeft});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,

        style: TextStyle(fontSize: fontSize, color: textColor),
      ),
    );
  }
}
