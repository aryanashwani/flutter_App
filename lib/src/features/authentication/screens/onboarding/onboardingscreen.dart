import 'package:curiosify/src/constants/colors.dart';
import 'package:curiosify/src/constants/image_strings.dart';
import 'package:curiosify/src/constants/sizes.dart';
import 'package:curiosify/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../models/model_on_boarding.dart';
import 'on_boarding_page_widget.dart';

class OnBoardingScreen extends StatefulWidget {
   OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage =0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pages = [
      OnboardingPageWidget(
          model: OnboardingModel(
      image: tOnBoardingImage1,
       title: tOnBoardingTitle1,
       height: size.height,
       bgColor: tOnBoardingPage1Color,
      ),
      ),

      OnboardingPageWidget(
        model: OnboardingModel(
          image: tOnBoardingImage2,
          title: tOnBoardingTitle1,
          height: size.height,
          bgColor: tOnBoardingPage1Color,
        ),
      ),

      OnboardingPageWidget(
        model: OnboardingModel(
          image: tOnBoardingImage3,
          title: tOnBoardingTitle1,
          height: size.height,
          bgColor: tOnBoardingPage1Color,
        ),
      ),
    ];



    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
         LiquidSwipe(
         pages: pages,
        liquidController: controller,
        onPageChangeCallback: onPageChangeCallback,
        // slideIconWidget: Icon(Icon.arrow_black_ios),
        enableSideReveal: true,

        //    OnboardingPage(size: size),
        //    Container(color: tOnBoardingPage2Color),
        //    Container(color: tOnBoardingPage3Color),
        //
        // ],
       ),
          // Positioned(
          //   bottom: 60,
          //   child: OutlinedButton(
          //     onPressed: (){
          //       int nextPage = controller.currentPage + 1;
          //       controller.animateToPage(page: nextPage);
          //     },
          //     style: ElevatedButton.styleFrom(
          //       side: const BorderSide(color: Colors.black26),
          //       shape: const CircleBorder(),
          //       padding: const EdgeInsets.all(20),
          //       onPrimary: Colors.white,
          //
          //     ),
          //     child: Container(
          //       padding: const EdgeInsets.all(15.0),
          //     decoration: const BoxDecoration(
          //       color: tDarkColor, shape: BoxShape.circle),
          //
          //     // color: tDarkColor,
          //     child: const Icon(Icons.arrow_forward_ios),
          //     ),
          //     ),
          //   ),
         Positioned(
            bottom: 10,
             child: AnimatedSmoothIndicator(
               activeIndex: controller.currentPage,
               effect:  WormEffect(
                 activeDotColor: Color(0xff272727),
                 dotHeight: 5.0,
               ),
               count: 3,
             ),
         ),
        ],
      ),
    //   body: SafeArea(
    //   child: Column(
    //     children: [
    //       const Spacer(),
    //       Image.asset("assets/images/onboardingimages/logo.png",
    //     height: 640  ,
    //     ),
    //   const Spacer(),
    //     Text(
    //       "",
    //       style: Theme.of(context)
    //       .textTheme.headline5!
    //       .copyWith(fontWeight:FontWeight.w500 ),
    //   ),
    //     ],
    //   ),
    // )
    );


  }

  void onPageChangeCallback(int activePageIndex) {
    setState((){
      currentPage = activePageIndex;
    });

  }
}


//
//
//
// // class OnBoardContent extends StatelessWidget {
// //   const OnBoardContent({
// //     key? key,
// //     }) : super(key: key);
// // final String image;