import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';
import 'package:get/get.dart';

class CustomNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentIndex;
  final Function(int)? onTap;
  final Color? backgroundColor;
  final Color? selectedItemColor;
  final Color? unSelectedItemColor;
  final double notchMargin;

  const CustomNavigationBar({
    Key? key,
    required this.currentIndex,
    this.backgroundColor,
    this.selectedItemColor = Colors.black,
    this.unSelectedItemColor = Colors.grey,
    this.onTap,
    this.notchMargin = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      shape: const CircularNotchedRectangle(),
      notchMargin: notchMargin,
      color: backgroundColor ?? Get.theme.primaryColor,
      child: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: currentIndex,
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unSelectedItemColor,
        onTap: onTap ??
            (value) {
              switch (value) {
                case 0:
                  if (value != currentIndex) Get.offAndToNamed(AppRoutes.PROFILE);
                  break;
                case 1:
                  if (value != currentIndex) Get.offAndToNamed(AppRoutes.HOME);
                  break;
                case 2:
                  if (value != currentIndex) Get.offAndToNamed(AppRoutes.NOTIFICATION);
                  break;
                case 3:
                  if (value != currentIndex) Get.toNamed(AppRoutes.CHAT);
                  break;

                default:
              }
            },
        items: items,
      ),
    );
  }

  List<BottomNavigationBarItem> get items => [
        const BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_sharp),
          label: "Profile",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Notification",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: "Message",
        ),
      ];
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
