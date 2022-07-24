import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? drawer;
  final Key? globalKey;

  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final PreferredSizeWidget? bottomNavigationBar;
  const CustomScaffold({
    Key? key,
    this.appBar,
    required this.body,
    this.floatingActionButtonLocation = FloatingActionButtonLocation.centerDocked,
    this.bottomNavigationBar,
    this.drawer,
    this.globalKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      extendBody: true,
      appBar: appBar,
      drawer: drawer,
      body: body,
      bottomNavigationBar: bottomNavigationBar ?? const SizedBox(),
    );
  }
}
