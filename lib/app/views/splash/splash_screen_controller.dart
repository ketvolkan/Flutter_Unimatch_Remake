import '../../routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Future<bool> splashEnd() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Get.offAndToNamed(AppRoutes.HOME);
    });
    return true;
  }
}
