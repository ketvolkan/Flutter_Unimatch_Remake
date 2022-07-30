import 'package:get/get.dart';

import '../../../core/models/message_models/message_model.dart';

class ChatController extends GetxController {
  List<MessageModel> messages = [];
  @override
  void onInit() {
    fillMessage();
    super.onInit();
  }

  void fillMessage() {
    messages.add(MessageModel(
      id: 1,
      lastActivity: DateTime.now(),
      lastMessage: "Selam",
      senderName: "Ayşe",
      userName: "Volkan",
    ));
    messages.add(MessageModel(
      id: 2,
      lastActivity: DateTime.now(),
      lastMessage: "Merhaba",
      senderName: "Aylin",
      userName: "Volkan",
    ));
    messages.add(MessageModel(
      id: 3,
      lastActivity: DateTime.now(),
      lastMessage: "Nasılsın?",
      senderName: "Başak",
      userName: "Volkan",
    ));
    messages.add(MessageModel(
      id: 4,
      lastActivity: DateTime.now(),
      lastMessage: "Günaydınnnn",
      senderName: "Merve",
      userName: "Volkan",
    ));
    messages.add(MessageModel(
      id: 1,
      lastActivity: DateTime.now(),
      lastMessage: "Selam",
      senderName: "Ayşe",
      userName: "Volkan",
    ));
    messages.add(MessageModel(
      id: 2,
      lastActivity: DateTime.now(),
      lastMessage: "Merhaba",
      senderName: "Aylin",
      userName: "Volkan",
    ));
    messages.add(MessageModel(
      id: 3,
      lastActivity: DateTime.now(),
      lastMessage: "Nasılsın?",
      senderName: "Başak",
      userName: "Volkan",
    ));
    messages.add(MessageModel(
      id: 4,
      lastActivity: DateTime.now(),
      lastMessage: "Günaydınnnn",
      senderName: "Merve",
      userName: "Volkan",
    ));
    messages.add(MessageModel(
      id: 1,
      lastActivity: DateTime.now(),
      lastMessage: "Selam",
      senderName: "Ayşe",
      userName: "Volkan",
    ));
    messages.add(MessageModel(
      id: 2,
      lastActivity: DateTime.now(),
      lastMessage: "Merhaba",
      senderName: "Aylin",
      userName: "Volkan",
    ));
    messages.add(MessageModel(
      id: 3,
      lastActivity: DateTime.now(),
      lastMessage: "Nasılsın?",
      senderName: "Başak",
      userName: "Volkan",
    ));
    messages.add(MessageModel(
      id: 4,
      lastActivity: DateTime.now(),
      lastMessage: "Günaydınnnn",
      senderName: "Merve",
      userName: "Volkan",
    ));
  }
}
