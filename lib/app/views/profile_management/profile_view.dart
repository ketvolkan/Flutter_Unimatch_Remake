import 'widgets/information_buttons.dart';
import '../../widgets/cards/custom_basic_card.dart';
import '../../widgets/others/custom_body.dart';
import '../../widgets/others/random_circle_image.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/utils/utils.dart';
import 'package:intl/intl.dart';

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
        body: Column(
          children: [
            _profilePictureField,
            SizedBox(height: Utils.normalPadding),
            CustomBody(
              child: SizedBox(
                width: Get.width,
                child: CustomBasicCard(
                  boxShadow: BoxShadow(
                    color: const Color.fromARGB(255, 223, 223, 223),
                    blurRadius: Utils.lowPadding,
                    spreadRadius: Utils.extraLowPadding,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(Utils.normalPadding),
                    child: Column(
                      children: [
                        infoSide,
                        SizedBox(height: Utils.normalPadding),
                        const informationWidget(
                          icon: Icons.account_circle_outlined,
                          title: "Profil",
                          subtitle: "Bilgileri Güncelle",
                        ),
                        SizedBox(height: Utils.normalPadding),
                        const informationWidget(
                          icon: Icons.add_a_photo_outlined,
                          title: "Fotoğraf",
                          subtitle: "Fotoğraf Ekle",
                        ),
                        SizedBox(height: Utils.normalPadding),
                        const informationWidget(
                          icon: Icons.settings,
                          title: "Ayarlar",
                          subtitle: "Uygulama Ayarları",
                        ),
                        SizedBox(height: Utils.normalPadding),
                        const informationWidget(
                          icon: Icons.power_settings_new,
                          title: "Çıkış Yap",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Row get infoSide => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText.extraHigh(
            "Volkan Ket",
            fontFamily: Get.theme.appBarTheme.titleTextStyle?.fontFamily,
          ),
          CustomText(DateFormat("yyyy/MM/dd").format(DateTime.now()))
        ],
      );

  SizedBox get _profilePictureField => SizedBox(
        width: Get.width,
        height: Get.height * 0.35,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(Utils.highRadius)),
            image: const DecorationImage(image: AssetImage("${AppConstants.baseJpgPath}image.jpg"), fit: BoxFit.fitWidth),
          ),
          child: Padding(
            padding: EdgeInsets.all(Utils.normalPadding),
            child: const RandomCircleImage(
              imageUrl: "${AppConstants.baseJpgPath}image.jpg",
            ),
          ),
        ),
      );

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
