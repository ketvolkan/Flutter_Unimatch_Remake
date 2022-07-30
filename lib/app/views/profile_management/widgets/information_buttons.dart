import 'package:flutter/material.dart';
import 'package:flutter_unimatch_remake/core/variables/colors.dart';
import '../../../widgets/others/custom_text.dart';
import '../../../../core/utils/utils.dart';

class informationWidget extends StatelessWidget {
  const informationWidget({
    Key? key,
    this.subtitle,
    required this.title,
    required this.icon,
    this.iconColor = AppColors.blackColor,
    this.onTap,
  }) : super(key: key);
  final String title;
  final String? subtitle;
  final IconData icon;
  final Color iconColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: iconColor, size: Utils.extraHighIconSize),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText.high(title),
              if (subtitle is String) CustomText(subtitle, textColor: AppColors.grayColor),
            ],
          )
        ],
      ),
    );
  }
}
