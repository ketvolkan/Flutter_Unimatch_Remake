import 'package:flutter/material.dart';
import 'package:flutter_unimatch_remake/core/variables/colors.dart';
import '../cards/custom_basic_card.dart';
import '../../../core/utils/utils.dart';

class IconWithBackground extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;
  final double? padding;
  const IconWithBackground({Key? key, required this.icon, this.onTap, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 0),
      child: InkWell(
        onTap: onTap,
        child: CustomBasicCard(
            boxShadow: BoxShadow(color: AppColors.shadowColor, blurRadius: Utils.lowRadius),
            borderRadius: Utils.extraHighRadius,
            child: Icon(icon, color: AppColors.blackColor, size: (padding ?? Utils.normalPadding) * 1.5)),
      ),
    );
  }
}
