import 'package:get/get.dart';

class CounterScreenController extends GetxController {
  var num = 0.obs;

  void increment() {
    num++;
  }
}
