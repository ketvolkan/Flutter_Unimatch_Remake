import 'package:get/get.dart';

import 'splash_screen_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
