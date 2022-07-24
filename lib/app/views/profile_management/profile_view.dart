import 'profile_controller.dart';
import '../../widgets/others/custom_appbar.dart';
import '../../widgets/others/custom_navigationbar.dart';
import '../../widgets/others/custom_scaffold.dart';
import '../../widgets/others/custom_text.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar,
      bottomNavigationBar: const CustomNavigationBar(currentIndex: 0),
      body: Container(
        color: Colors.white,
      ),
    );
  }

  CustomAppBar get _buildAppBar => CustomAppBar(
        centerTitle: true,
        showLeadingBackIcon: false,
        title: CustomText.custom(
          "Profile",
          fontFamily: Get.theme.appBarTheme.titleTextStyle?.fontFamily,
          textSize: Get.width * 0.07,
        ),
      );
}
