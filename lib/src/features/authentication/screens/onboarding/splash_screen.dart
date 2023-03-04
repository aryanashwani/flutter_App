import 'package:curiosify/src/constants/colors.dart';
import 'package:curiosify/src/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen ({Key ? key}) : super(key:key);
   final splashController = Get.put(SplashScreenController());
  // SplashScreenController splashScreenController = SplashScreenController();
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {


  // @override
  // void initState() {
  //   startAnimation();
  // }

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body :Stack(
        children: [
          Obx( () =>
              AnimatedPositioned(
              duration: const Duration(milliseconds: 1000),
              bottom: splashController.animate.value ? 20 :0,
                child :AnimatedOpacity(
                 duration: const Duration(milliseconds: 1000),
            opacity: splashController.animate.value ? 1:0,
               child: Image(image: AssetImage(tSplashTopIcon)),
          ),
          ),
          ),
    //       Obx( () =>
    //       AnimatedPositioned(
    //         duration: const Duration(milliseconds: 1400),
    // top: splashController.animate.value ? 0 : -30,
    // left: splashController.animate.value ? 0 : -30,
    //         bottom: 80,
    //         child: Image(
    //           image: AssetImage(tOnBoardingImage4)
    //         ),
    //       ),
    // ),
    // Obx( () =>
    // AnimatedPositioned(
    //   duration: const Duration(milliseconds: 1400),
    //         bottom: 40,
    //
    //         child: Container(
    //         width: Material.defaultSplashRadius,
    //           height: Material.defaultSplashRadius,
    //         //   decoration: BoxDecoration(
    //         //     borderRadius: BorderRadius.circular(100),
    //         //   ),
    //           color: tPrimaryColor,
    //         ),
    //       ),
        ],
      ),

      );

  }
}