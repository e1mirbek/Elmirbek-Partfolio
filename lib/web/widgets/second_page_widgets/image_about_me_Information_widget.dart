




import 'package:flutter/material.dart';

class ImageAboutMeInformationWidget extends StatelessWidget {
  final double imageSize;
  const ImageAboutMeInformationWidget({super.key, required this.imageSize});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/web.jpg",
      height: imageSize,
    );
  }
}
