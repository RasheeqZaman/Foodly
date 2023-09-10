import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'confirm_button.dart';

class PageSlider extends StatefulWidget {
  const PageSlider({
    Key? key,
    required this.pages,
    this.viewPortFraction = 1.0,
    this.aspectRatio = 1.0,
    required this.onPressSkip,
  }) : super(key: key);

  final List<Widget> pages;
  final double viewPortFraction;
  final double aspectRatio;
  final void Function() onPressSkip;

  @override
  State<PageSlider> createState() => _PageSliderState();
}

class _PageSliderState extends State<PageSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    bool isLastPage = (_current == widget.pages.length - 1);
    final Color primaryColor = Theme.of(context).colorScheme.primary;
    return (widget.pages.isEmpty)
        ? const SizedBox.shrink()
        : Column(
            children: [
              CarouselSlider(
                items: widget.pages,
                carouselController: _controller,
                options: CarouselOptions(
                  viewportFraction: widget.viewPortFraction,
                  aspectRatio: widget.aspectRatio,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              if (widget.pages.length > 1)
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widget.pages.asMap().entries.map(
                      (entry) {
                        Color dotColor =
                            (Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : primaryColor)
                                .withOpacity(_current == entry.key ? 1.0 : 0.8);
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: (_current == entry.key) ? 24.0 : 8.0,
                            height: 8.0,
                            margin: const EdgeInsets.symmetric(horizontal: 6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: dotColor,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              Container(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 5.0,
                ),
                child: ConfirmButton(
                  title: (isLastPage)
                      ? 'Start'
                      : 'Next',
                  style: TextButton.styleFrom(
                    minimumSize: const Size(300.0, 50.0),
                  ),
                  onPress: () {
                    if (isLastPage) {
                      widget.onPressSkip();
                    } else {
                      _controller.animateToPage(_current + 1);
                    }
                  },
                ),
              ),
              if (!isLastPage)
                ConfirmButton(
                  title: 'Skip',
                  style: TextButton.styleFrom(
                    foregroundColor: primaryColor,
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                  ),
                  onPress: () {
                    widget.onPressSkip();
                  },
                ),
            ],
          );
  }
}
