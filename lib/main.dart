import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'app/views/home_management/home_binding.dart';
import 'core/service/base_service.dart';
import 'theme/app_themes.dart';

void main() async {
  runApp(const MyApp());
  await initPage();
}

Future<void> initPage() async {
  Get.put(BaseService());
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniMatch Remake',
      theme: AppThemes.lightTheme,
      getPages: AppPages.PAGES,
      defaultTransition: Transition.noTransition,
      initialBinding: HomeBinding(),
      initialRoute: AppRoutes.HOME,
      locale: const Locale('tr', 'TR'),
    );
  }
}
