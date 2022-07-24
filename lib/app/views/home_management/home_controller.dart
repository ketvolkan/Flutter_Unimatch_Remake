import 'package:flutter/material.dart';
import '../../widgets/others/custom_text.dart';
import 'package:get/get.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

class HomeController extends GetxController {
  final List<SwipeItem> swipeItems = <SwipeItem>[];
  MatchEngine matchEngine = MatchEngine();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final List<String> photoUrl = [
    "https://www.worldphoto.org/sites/default/files/default-media/Piercy.jpg",
    "https://expertphotography.b-cdn.net/wp-content/uploads/2019/02/Types-Of-Portrait-Photography-BW.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmSyz0r2Z3Uy7zAwu2g-0AaL1yALD5avWSxw&usqp=CAU",
  ];

  @override
  void onInit() {
    for (int i = 0; i < photoUrl.length; i++) {
      swipeItems.add(SwipeItem(
          content: CustomText(photoUrl[i]),
          likeAction: () {},
          nopeAction: () {},
          superlikeAction: () {},
          onSlideUpdate: (SlideRegion? region) async {}));
    }

    matchEngine = MatchEngine(swipeItems: swipeItems);
    super.onInit();
  }

  void onLeftSwipe() {}
  void onRightSwipe() {}
}
