import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'onboardingcontroller.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OnBoardingController _controller = OnBoardingController(context);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller.pageController,
              itemCount: _controller.pages.length,
              onPageChanged: _controller.selectedPageIndex,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(height: 80),
                      Image.asset(_controller.pages[index].assetImage,
                          width: 300),
                      SizedBox(height: 30),
                      Text(_controller.pages[index].title,
                          style: Theme.of(context).textTheme.headline5),
                      SizedBox(height: 30),
                      Text(_controller.pages[index].description,
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.center),
                    ],
                  ),
                );
              },
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          _controller.skip();
                        },
                        child: Obx(() => !_controller.isLastPage
                            ? Text('Skip')
                            : Container())),
                    Row(
                        children:
                            List.generate(_controller.pages.length, (index) {
                      return Obx(
                        () => Container(
                          margin: EdgeInsets.all(5.0),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: _controller.selectedPageIndex == index
                                ? Colors.indigo
                                : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    })),
                    TextButton(
                        onPressed: () {
                          _controller.goToNextPage(context);
                        },
                        child: Obx(() =>
                            Text(_controller.isLastPage ? 'Start' : 'Next'))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
