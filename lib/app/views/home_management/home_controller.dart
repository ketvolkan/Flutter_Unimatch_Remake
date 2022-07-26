import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

import '../../widgets/others/custom_text.dart';

class HomeController extends GetxController {
  final List<SwipeItem> swipeItems = <SwipeItem>[];
  MatchEngine matchEngine = MatchEngine();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final List<String> photoUrl = [
    "image.jpg",
    "image.jpg",
    "image.jpg",
  ];

  @override
  void onInit() {
    for (int i = 0; i < photoUrl.length; i++) {
      swipeItems.add(SwipeItem(
          content: CustomText(photoUrl[i]),
          likeAction: () => onRightSwipe(),
          nopeAction: () => onLeftSwipe(),
          onSlideUpdate: (SlideRegion? region) async {}));
    }

    matchEngine = MatchEngine(swipeItems: swipeItems);
    super.onInit();
  }

  void onLeftSwipe() {}
  void onRightSwipe() {}
}
