import 'package:flutter/material.dart';
import '../../widgets/others/custom_text.dart';
import '../../../core/variables/colors.dart';
import 'package:get/get.dart';

import 'splash_screen_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //! İleride kaldırlacak
    controller.splashEnd();
    //!
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox.square(
              dimension: Get.width * 0.4,
              child: const CircularProgressIndicator(color: AppColors.blackColor, strokeWidth: 11),
            ),
            SizedBox(height: Get.width * 0.2),
            CustomText.extraHigh("By Ket Dev", bold: true, textColor: AppColors.blackColor),
          ],
        ),
      ),
    );
  }
}
