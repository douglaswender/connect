import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConnectImage extends StatelessWidget {
  final String assetName;
  final double? height;
  final double? width;
  const ConnectImage(
    this.assetName, {
    super.key,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    if (assetName.contains('svg')) {
      return Align(
        child: SvgPicture.asset(
          assetName,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      );
    }
    return Image.asset(assetName);
  }
}
