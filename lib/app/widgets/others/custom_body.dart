import 'package:flutter/material.dart';
import '../../../core/utils/utils.dart';

class CustomBody extends StatelessWidget {
  final EdgeInsets? padding;
  final Widget? child;
  const CustomBody({Key? key, this.padding, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: Utils.extraHighPadding),
      child: child,
    );
  }
}
