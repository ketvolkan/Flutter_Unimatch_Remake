import 'package:flutter/material.dart';
import '../buttons/icon_with_background.dart';
import '../../../core/utils/utils.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final List<Widget>? actions;
  final Widget? title;
  final bool showLeadingBackIcon;
  final Widget? customLeadingButton;
  final bool centerTitle;
  final Function()? onLeadingPressed;
  final bool? automaticallyImplyLeading;
  const CustomAppBar({
    Key? key,
    this.actions,
    this.title,
    this.showLeadingBackIcon = true,
    this.centerTitle = false,
    this.onLeadingPressed,
    this.customLeadingButton,
    this.automaticallyImplyLeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      backgroundColor: Get.theme.primaryColor,
      title: title ?? const SizedBox(),
      leading: showLeadingBackIcon ? leadingIcon() : customLeadingButton,
      actions: actions ?? [],
      elevation: 0,
      centerTitle: centerTitle,
    );
  }

  IconWithBackground leadingIcon() {
    return IconWithBackground(
      icon: Icons.arrow_back_ios_new,
      padding: Utils.normalPadding,
      onTap: () {
        Get.back();
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
