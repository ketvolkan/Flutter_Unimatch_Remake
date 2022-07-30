import 'package:flutter/material.dart';
import 'package:flutter_unimatch_remake/core/utils/utils.dart';
import 'package:flutter_unimatch_remake/core/variables/colors.dart';
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
          backgroundColor: AppColors.whiteColor,
          radius: Utils.extraHighRadius,
          child: CircleAvatar(
            radius: Utils.extraHighRadius - 1,
            backgroundImage: AssetImage(imageUrl),
          ),
        )));
  }
}
