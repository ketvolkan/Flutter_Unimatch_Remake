import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';

class RandomCircleImage extends StatelessWidget {
  const RandomCircleImage({
    Key? key,
    this.height,
    this.width,
    this.imageUrl = '${AppConstants.baseJpgPath}image2.jpg',
  }) : super(key: key);
  final imageUrl;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: FittedBox(
            child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 73.0,
          child: CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage(imageUrl),
          ),
        )));
  }
}
