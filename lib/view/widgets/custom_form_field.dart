import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomFormField extends StatelessWidget {

  final String text,hintText;
  final Function onSaved ,validator;


  CustomFormField({this.text, this.hintText, this.onSaved, this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: text,
          textColor: Colors.grey.shade900,
        ),
        TextFormField(
          onSaved: onSaved,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            fillColor: Colors.white,
          ),
        )
      ],
    );
  }
}