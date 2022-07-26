import 'package:flutter_unimatch_remake/app/views/chat_management/chat_controller.dart';
import 'package:flutter_unimatch_remake/app/views/chat_management/widgets/message_preview_card.dart';
import 'package:flutter_unimatch_remake/app/widgets/others/random_circle_image.dart';
import 'package:flutter_unimatch_remake/core/utils/utils.dart';

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
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: Utils.normalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Utils.normalPadding),
            CustomText.extraHigh(
              "New Matches!",
              fontFamily: Get.theme.appBarTheme.titleTextStyle?.fontFamily,
            ),
            SizedBox(height: Utils.normalPadding),
            SizedBox(height: Get.height * 0.1, child: matchField),
            SizedBox(height: Utils.normalPadding),
            CustomText.extraHigh(
              "Conversations",
              fontFamily: Get.theme.appBarTheme.titleTextStyle?.fontFamily,
            ),
            SizedBox(height: Utils.normalPadding),
            Expanded(child: chatMessageField),
          ],
        ),
      ),
    );
  }

  DecoratedBox get matchField => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Utils.highRadius),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 223, 223, 223),
              blurRadius: Utils.lowPadding,
              spreadRadius: Utils.extraLowPadding,
            ),
          ],
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
  DecoratedBox get chatMessageField => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Utils.highRadius),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 223, 223, 223),
              blurRadius: Utils.lowPadding,
              spreadRadius: Utils.extraLowPadding,
            ),
          ],
        ),
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
