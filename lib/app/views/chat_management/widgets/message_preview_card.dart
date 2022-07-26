import 'package:flutter/material.dart';
import 'package:flutter_unimatch_remake/app/widgets/others/custom_text.dart';
import 'package:flutter_unimatch_remake/app/widgets/others/random_circle_image.dart';
import 'package:flutter_unimatch_remake/core/models/message_models/message_model.dart';
import 'package:flutter_unimatch_remake/core/utils/utils.dart';
import 'package:intl/intl.dart';

class MessagePreviewCard extends StatelessWidget {
  final MessageModel messageModel;
  const MessagePreviewCard({Key? key, required this.messageModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Utils.normalPadding),
      child: ListTile(
        leading: const RandomCircleImage(),
        title: CustomText.high(messageModel.senderName),
        subtitle: Row(
          children: [
            const Icon(Icons.double_arrow_rounded),
            SizedBox(width: Utils.extraLowPadding),
            CustomText(messageModel.lastMessage)
          ],
        ),
        trailing: CustomText(DateFormat('kk:mm').format(messageModel.lastActivity!)),
      ),
    );
  }
}
