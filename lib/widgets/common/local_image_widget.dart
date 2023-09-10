import 'package:flutter/material.dart';

class LocalImageWidget extends StatelessWidget {
  const LocalImageWidget({
    Key? key,
    required this.imagePath,
    this.boxShape,
    this.width,
    this.height,
    this.borderRadius,
    this.boxFit = BoxFit.cover,
    this.colorFilter,
  }) : super(key: key);

  final String imagePath;
  final double? width, height;
  final BoxShape? boxShape;
  final BorderRadiusGeometry? borderRadius;
  final BoxFit boxFit;
  final ColorFilter? colorFilter;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        shape: boxShape ?? BoxShape.rectangle,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: boxFit,
          colorFilter: colorFilter,
        ),
      ),
      width: width,
      height: height,
    );
  }
}