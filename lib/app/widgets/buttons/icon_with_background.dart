import 'package:flutter/material.dart';
import '../cards/custom_basic_card.dart';
import '../../../core/utils/utils.dart';

class IconWithBackground extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;
  final double? padding;
  const IconWithBackground({Key? key, required this.icon, this.onTap, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 0),
      child: InkWell(
        onTap: onTap,
        child: CustomBasicCard(
            boxShadow: BoxShadow(color: const Color.fromARGB(255, 223, 223, 223), blurRadius: Utils.lowRadius),
            borderRadius: Utils.extraHighRadius,
            child: Icon(icon, color: Colors.black, size: (padding ?? Utils.normalPadding) * 1.5)),
      ),
    );
  }
}
