import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImageWidget extends StatelessWidget {
  const CachedImageWidget({
    Key? key,
    required this.imageLink,
    this.boxShape,
    this.width,
    this.height,
    this.borderRadius,
    this.boxFit = BoxFit.cover,
    this.padding,
  }) : super(key: key);

  final String imageLink;
  final double? width, height;
  final BoxShape? boxShape;
  final BorderRadiusGeometry? borderRadius;
  final BoxFit boxFit;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageLink,
      imageBuilder: (context, imageProvider) {
        return Container(
          margin: padding,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            shape: boxShape ?? BoxShape.rectangle,
            image: DecorationImage(
              image: imageProvider,
              fit: boxFit,
            ),
          ),
          width: width,
          height: height,
        );
      },
      placeholder: (context, url) {
        return SizedBox(
          width: width,
          height: height,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      errorWidget: (BuildContext context, String url, dynamic error){
        return const CircleAvatar(
          radius: 35.0,
          backgroundColor: Color.fromRGBO(40, 40, 40, 1.0),
          child: Icon(
            Icons.warning_rounded,
            color: Colors.red,
          ),
        );
      },
    );
  }
}