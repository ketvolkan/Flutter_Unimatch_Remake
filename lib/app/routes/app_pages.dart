import 'package:get/get.dart';

import '../views/chat_management/chat_binding.dart';
import '../views/chat_management/chat_view.dart';
import '../views/home_management/home_binding.dart';
import '../views/home_management/home_view.dart';
import '../views/notification_management/notification_binding.dart';
import '../views/notification_management/notification_view.dart';
import '../views/profile_management/profile_binding.dart';
import '../views/profile_management/profile_view.dart';
import 'app_routes.dart';

class AppPages {
  static var PAGES = [
    GetPage(
      name: AppRoutes.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: AppRoutes.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
      transition: Transition.cupertino,
    ),
  ];
}
