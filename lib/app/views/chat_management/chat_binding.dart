import 'chat_service.dart';
import 'package:get/get.dart';
import 'chat_controller.dart';

class ChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatService());
    Get.lazyPut(() => ChatController());
  }
}
