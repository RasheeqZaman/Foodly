import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'cached_image_widget.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({
    Key? key,
    required this.imageLinks,
    required this.borderRadius,
    this.aspectRatio = 1.8,
    this.boxFit = BoxFit.fitWidth,
    this.showDotSelector = true,
    this.imagePadding,
  }) : super(key: key);

  final List<String> imageLinks;
  final BorderRadius borderRadius;
  final double aspectRatio;
  final BoxFit boxFit;
  final bool showDotSelector;
  final EdgeInsets? imagePadding;

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return (widget.imageLinks.isEmpty)
        ? const SizedBox.shrink()
        : Container(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: CarouselSlider(
                    items: widget.imageLinks
                        .map(
                          (imageLink) => CachedImageWidget(
                            imageLink: imageLink,
                            boxFit: widget.boxFit,
                            borderRadius: widget.borderRadius,
                            padding: widget.imagePadding,
                          ),
                        )
                        .toList(),
                    carouselController: _controller,
                    options: CarouselOptions(
                      viewportFraction: 1.0,
                      autoPlay: (widget.imageLinks.length > 1),
                      enlargeCenterPage: false,
                      aspectRatio: widget.aspectRatio,
                      autoPlayInterval: const Duration(seconds: 10),
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                  ),
                ),
                if (widget.showDotSelector && widget.imageLinks.length > 1)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widget.imageLinks.asMap().entries.map(
                        (entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: (_current == entry.key) ? 24.0 : 8.0,
                              height: 8.0,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : Theme.of(context)
                                              .colorScheme
                                              .primary)
                                      .withOpacity(
                                          _current == entry.key ? 1.0 : 0.8)),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
              ],
            ),
          );
  }
}
