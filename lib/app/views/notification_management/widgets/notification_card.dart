import 'package:flutter/cupertino.dart';
import '../../../widgets/cards/custom_basic_card.dart';
import '../../../widgets/others/custom_text.dart';
import '../../../../core/utils/utils.dart';
import '../../../../core/variables/colors.dart';

class NotificationCard extends StatelessWidget {
  final String notification;
  const NotificationCard({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Utils.normalPadding),
      child: CustomBasicCard(
        borderRadius: Utils.lowRadius,
        boxShadow: BoxShadow(
          color: AppColors.shadowColor,
          blurRadius: Utils.extraLowPadding,
          spreadRadius: Utils.extraLowPadding,
        ),
        child: Padding(
          padding: EdgeInsets.all(Utils.normalPadding),
          child: CustomText(notification),
        ),
      ),
    );
  }
}
