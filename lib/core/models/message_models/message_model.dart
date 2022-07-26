import 'package:flutter_unimatch_remake/core/service/base_model.dart';

//Deneme Amaçlı Yapılan Bir Model
class MessageModel extends BaseModel {
  int? id;
  String? senderName;
  String? userName;
  String? lastMessage;
  DateTime? lastActivity;
  MessageModel({
    this.id,
    this.lastActivity,
    this.lastMessage,
    this.senderName,
    this.userName,
  });
  @override
  fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
