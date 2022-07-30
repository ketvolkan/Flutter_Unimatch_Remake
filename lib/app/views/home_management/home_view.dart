import 'package:flutter/material.dart';
import 'package:flutter_unimatch_remake/core/variables/colors.dart';
import '../../widgets/cards/custom_basic_card.dart';
import '../../widgets/others/custom_body.dart';
import '../../../core/constants/app_constants.dart';

import '../../../core/utils/utils.dart';
import 'package:get/get.dart';
import 'package:swipe_cards/swipe_cards.dart';

import '../../widgets/others/custom_appbar.dart';
import '../../widgets/others/custom_navigationbar.dart';
import '../../widgets/others/custom_scaffold.dart';
import '../../widgets/others/custom_text.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar,
      bottomNavigationBar: const CustomNavigationBar(currentIndex: 1),
      body: CustomBody(child: _swipeField),
    );
  }

  Padding get _swipeField => Padding(
        padding: EdgeInsets.only(top: Utils.normalPadding),
        child: SizedBox(
          height: Get.height * 0.75,
          child: SwipeCards(
            matchEngine: controller.matchEngine,
            itemBuilder: (BuildContext context, int index) {
              return CustomBasicCard(
                boxShadow: BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: Utils.lowPadding,
                  spreadRadius: Utils.extraLowPadding,
                ),
                image: AssetImage("${AppConstants.baseJpgPath}${controller.photoUrl[index]}"),
                child: _infoBox,
              );
            },
            onStackFinished: () {},
            itemChanged: (SwipeItem item, int index) {},
            upSwipeAllowed: false,
            fillSpace: true,
          ),
        ),
      );
  CustomAppBar get _buildAppBar => CustomAppBar(
        showLeadingBackIcon: false,
        centerTitle: true,
        title: CustomText.custom(
          "Unimatch Remake",
          fontFamily: Get.theme.appBarTheme.titleTextStyle?.fontFamily,
          textSize: Get.width * 0.07,
        ),
      );

  Padding get _infoBox => Padding(
        padding: EdgeInsets.all(Utils.extraHighPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText.custom(
              "Volkan Ket, 22",
              textColor: AppColors.whiteColor,
              textSize: Get.width * 0.075,
            ),
            Row(
              children: [
                Icon(Icons.location_pin, color: AppColors.whiteColor, size: Utils.normalIconSize),
                SizedBox(width: Utils.extraLowPadding),
                CustomText(
                  "4 Kilometre Uzakta (Bursa)",
                  textColor: AppColors.whiteColor,
                )
              ],
            ),
          ],
        ),
      );
}
