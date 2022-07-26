import 'package:flutter/material.dart';
import '../../../core/utils/utils.dart';

class CustomBasicCard extends StatelessWidget {
  final Widget child;
  final ImageProvider<Object>? image;
  final BoxShadow? boxShadow;
  final double? borderRadius;
  final Color? color;
  const CustomBasicCard({Key? key, required this.child, this.image, this.boxShadow, this.borderRadius, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? Utils.lowRadius),
        boxShadow: [if (boxShadow is BoxShadow) boxShadow!],
        image: image is ImageProvider<Object> ? DecorationImage(image: image!, fit: BoxFit.fitHeight) : null,
      ),
      child: child,
    );
  }
}
