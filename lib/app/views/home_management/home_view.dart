import 'package:flutter/material.dart';

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
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: Utils.extraHighPadding),
        child: Column(
          children: [
            SizedBox(height: Utils.highPadding),
            _swipeField,
          ],
        ),
      ),
    );
  }

  SizedBox get _swipeField => SizedBox(
        height: Get.height * 0.75,
        child: SwipeCards(
          matchEngine: controller.matchEngine,
          itemBuilder: (BuildContext context, int index) {
            return DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Utils.lowRadius),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 223, 223, 223),
                    blurRadius: Utils.lowPadding,
                    spreadRadius: Utils.extraLowPadding,
                  ),
                ],
                image: DecorationImage(image: NetworkImage(controller.photoUrl[index]), fit: BoxFit.fitHeight),
              ),
              child: _infoBox,
            );
          },
          onStackFinished: () {},
          itemChanged: (SwipeItem item, int index) {},
          upSwipeAllowed: false,
          fillSpace: true,
        ),
      );
  CustomAppBar get _buildAppBar => CustomAppBar(
        centerTitle: true,
        showLeadingBackIcon: false,
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
              textColor: Colors.white,
              textSize: Get.width * 0.075,
            ),
            Row(
              children: [
                Icon(Icons.location_pin, color: Colors.white, size: Utils.normalIconSize),
                SizedBox(width: Utils.extraLowPadding),
                CustomText(
                  "4 Kilometre Uzakta (Bursa)",
                  textColor: Colors.white,
                )
              ],
            ),
          ],
        ),
      );
}
