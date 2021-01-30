import 'package:e_commerce_app/helper/binding.dart';
import 'package:e_commerce_app/view/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      initialBinding: Binding(),
     home: LoginPage(),
    );
  }
}
