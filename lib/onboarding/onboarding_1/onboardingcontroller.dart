import 'package:flutter/material.dart';
import 'package:flutter_demos/onboarding/onboarding_1/login_screen.dart';
import 'package:get/get.dart';

import 'onboardinginfo.dart';

class OnBoardingController extends GetxController {
  PageController pageController = PageController();
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex == (pages.length - 1);

  OnBoardingController(BuildContext ctx);

  void goToNextPage(BuildContext ctx) {
    if (!isLastPage) {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.easeIn);
    } else {
      Navigator.push(ctx, MaterialPageRoute(
        builder: (context) {
          return LoginScreen();
        },
      ));
    }
  }

  void skip() {
    pageController.jumpToPage(pages.length - 1);
  }

  List<OnBoardingInfo> pages = [
    OnBoardingInfo('assets/images/onboarding/1.jpg', 'Easy to Use',
        'The intutive user interface makes the life easier'),
    OnBoardingInfo('assets/images/onboarding/2.jpg', 'Access Anywhere',
        'Access your notes from anywhere on any device'),
    OnBoardingInfo('assets/images/onboarding/3.jpg', 'Share',
        'Share the daily notes with others')
  ];
}
