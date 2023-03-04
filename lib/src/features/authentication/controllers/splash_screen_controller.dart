import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/onboarding/onboardingscreen.dart';
import '../screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();
  RxBool animate =false.obs;

  // bool animate = false;
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 150));
    animate.value =true;
    await Future.delayed(const Duration(milliseconds: 1500));
    Get.to( OnBoardingScreen());
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcome));
  }
}

