import 'package:e_commerce_app/consts.dart';
import 'package:e_commerce_app/view/widgets/custom_flat_button.dart';
import 'package:e_commerce_app/view/widgets/custom_form_field.dart';
import 'package:e_commerce_app/view/widgets/custom_social_button.dart';
import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:e_commerce_app/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Welcome,',
                  fontSize: 20,
                  textColor: Colors.black,
                ),
                CustomText(
                  text: 'Sign Up',
                  fontSize: 16,
                  textColor: kPrimeryColor,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              textColor: Colors.grey,
              text: 'Sign in to Continue',
              fontSize: 14,
            ),
            SizedBox(
              height: 50,
            ),
            CustomFormField(
              text: 'Email',
              hintText: 'iamdavid@gmail.com',
              onSaved: (value) {},
              validator: (value) {},
            ),
            SizedBox(
              height: 20,
            ),
            CustomFormField(
              text: 'Password',
              hintText: '*  *  *  *  *  *  *  *',
              onSaved: (value) {},
              validator: (value) {},
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: 'Forgot Password?',
              alignment: Alignment.topRight,
            ),
            SizedBox(
              height: 20,
            ),
            CustomFlatButton(
              text: 'SIGN IN',
              onPressed: () {},
            ),
            SizedBox(
              height: 40,
            ),
            CustomText(
              text: '-OR-',
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 40,
            ),
            CustomSocialButton(
              img: 'assets/img/facebook.png',
              text: 'Sign In with Facebook',
              onPressed: () {
                controller.facebookSignIn();
              },
            ),
            SizedBox(
              height: 15,
            ),
            CustomSocialButton(
              img: 'assets/img/google.png',
              text: 'Sign In with Google',
              onPressed: () {
                controller.signInWithGoogle();
              },
            ),
          ],
        ),
      ),
    );
  }
}
