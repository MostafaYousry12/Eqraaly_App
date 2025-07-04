import 'package:eqraaly_app/constants.dart';
import 'package:eqraaly_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const EqraalyApp());
}

class EqraalyApp extends StatelessWidget {
  const EqraalyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kBackgroundColor),
      home: SplashView(),
    );
  }
}
