import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counterscreencontroller.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);

  var controller = CounterScreenController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(
                () => Text(
                  '${controller.num}',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Text('Increment')),
            ],
          ),
        ),
      ),
    );
  }
}
