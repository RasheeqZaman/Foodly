import 'package:flutter/material.dart';

import '../common/image_slider.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlider(
      imageLinks: const [
        'https://picsum.photos/id/10/500/200',
        'https://picsum.photos/id/11/500/200',
        'https://picsum.photos/id/13/500/200',
      ],
      borderRadius: BorderRadius.circular(10.0),
      aspectRatio: 2.5,
      showDotSelector: false,
      imagePadding: const EdgeInsets.symmetric(horizontal: 5.0),
      boxFit: BoxFit.fitHeight,
    );
  }
}
