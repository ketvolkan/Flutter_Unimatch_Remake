import 'package:flutter/material.dart';
import '../../../widgets/others/custom_text.dart';
import '../../../widgets/others/random_circle_image.dart';
import '../../../../core/models/message_models/message_model.dart';
import '../../../../core/utils/utils.dart';
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
