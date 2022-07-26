import 'chat_controller.dart';
import 'widgets/message_preview_card.dart';
import '../../widgets/cards/custom_basic_card.dart';
import '../../widgets/others/custom_body.dart';
import '../../widgets/others/random_circle_image.dart';
import '../../../core/utils/utils.dart';

import '../../widgets/others/custom_appbar.dart';
import '../../widgets/others/custom_scaffold.dart';
import '../../widgets/others/custom_text.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar,
      body: CustomBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Utils.normalPadding),
            titleText("New Matches!"),
            SizedBox(height: Utils.normalPadding),
            SizedBox(height: Get.height * 0.1, child: matchField),
            SizedBox(height: Utils.normalPadding),
            titleText("Conversations"),
            SizedBox(height: Utils.normalPadding),
            Expanded(child: chatMessageField),
          ],
        ),
      ),
    );
  }

  CustomText titleText(String text) {
    return CustomText.extraHigh(
      text,
      fontFamily: Get.theme.appBarTheme.titleTextStyle?.fontFamily,
    );
  }

  CustomBasicCard get matchField => CustomBasicCard(
        borderRadius: Utils.highRadius,
        boxShadow: BoxShadow(
          color: const Color.fromARGB(255, 223, 223, 223),
          blurRadius: Utils.lowPadding,
          spreadRadius: Utils.extraLowPadding,
        ),
        child: Padding(
          padding: EdgeInsets.all(Utils.lowPadding),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const RandomCircleImage();
            },
            separatorBuilder: (context, index) => SizedBox(width: Utils.lowPadding),
            itemCount: 10,
          ),
        ),
      );
  CustomBasicCard get chatMessageField => CustomBasicCard(
        boxShadow: BoxShadow(
          color: const Color.fromARGB(255, 223, 223, 223),
          blurRadius: Utils.lowPadding,
          spreadRadius: Utils.extraLowPadding,
        ),
        borderRadius: Utils.normalRadius,
        child: ListView.separated(
          itemBuilder: (context, index) {
            final messageModel = controller.messages[index];
            return MessagePreviewCard(messageModel: messageModel);
          },
          separatorBuilder: (context, index) => SizedBox(height: Utils.lowPadding),
          itemCount: controller.messages.length,
        ),
      );

  CustomAppBar get _buildAppBar => CustomAppBar(
        centerTitle: true,
        title: CustomText.custom(
          "Chat",
          fontFamily: Get.theme.appBarTheme.titleTextStyle?.fontFamily,
          textSize: Get.width * 0.07,
        ),
      );
}
