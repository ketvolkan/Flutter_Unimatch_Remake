import 'package:flutter/material.dart';
import 'package:flutter_unimatch_remake/app/views/notification_management/notification_controller.dart';
import 'package:flutter_unimatch_remake/app/views/notification_management/widgets/notification_card.dart';
import 'package:flutter_unimatch_remake/core/utils/utils.dart';
import 'package:get/get.dart';

import '../../widgets/others/custom_appbar.dart';
import '../../widgets/others/custom_navigationbar.dart';
import '../../widgets/others/custom_scaffold.dart';
import '../../widgets/others/custom_text.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBar: _buildAppBar,
        bottomNavigationBar: const CustomNavigationBar(currentIndex: 2),
        body: ListView.separated(
            itemBuilder: (context, index) {
              if (index == 0) return SizedBox(height: Utils.normalPadding);
              final notification = controller.notifications[index - 1];
              return NotificationCard(notification: notification);
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: Utils.normalPadding);
            },
            itemCount: controller.notifications.length + 1));
  }

  CustomAppBar get _buildAppBar => CustomAppBar(
        centerTitle: true,
        showLeadingBackIcon: false,
        title: CustomText.custom(
          "Notification",
          fontFamily: Get.theme.appBarTheme.titleTextStyle?.fontFamily,
          textSize: Get.width * 0.07,
        ),
      );
}
