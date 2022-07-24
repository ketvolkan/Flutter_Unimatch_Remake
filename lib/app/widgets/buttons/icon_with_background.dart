import 'package:flutter/material.dart';
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
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Utils.extraHighRadius),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 223, 223, 223),
                blurRadius: Utils.lowRadius,
              )
            ],
          ),
          child: Icon(
            icon,
            color: Colors.black,
            size: (padding ?? Utils.normalPadding) * 1.5,
          ),
        ),
      ),
    );
  }
}
