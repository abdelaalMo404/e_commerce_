import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomSocialButton extends StatelessWidget {
  final String img, text;
  final Function onPressed;

  CustomSocialButton({this.img, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(15),
      color: Colors.white,
      onPressed: onPressed,
      child: Row(
        children: [
          Image.asset(
            img,
            width: 20,
            height: 20,
          ),
          SizedBox(
            width: 70,
          ),
          CustomText(
            text: text,
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}
