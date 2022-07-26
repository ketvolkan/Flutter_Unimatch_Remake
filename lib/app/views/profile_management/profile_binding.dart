import 'profile_service.dart';
import 'package:get/get.dart';
import 'profile_controller.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileService());
    Get.lazyPut(() => ProfileController());
  }
}
