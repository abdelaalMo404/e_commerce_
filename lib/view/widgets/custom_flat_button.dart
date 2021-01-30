import 'package:flutter/material.dart';

import '../../consts.dart';
import 'custom_text.dart';

class CustomFlatButton extends StatelessWidget {

  final String text;
  final Function onPressed;


  CustomFlatButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(20),
        color: kPrimeryColor,
        child: CustomText(
          text: text,
          textColor: Colors.white,
          alignment: Alignment.center,
        ));
  }
}
