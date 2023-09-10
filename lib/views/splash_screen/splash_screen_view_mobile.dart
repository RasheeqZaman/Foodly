import 'package:flutter/material.dart';
import 'package:pranshakti/widgets/splash_screen/logo_widget.dart';

import '../../utils/splash_screen/splash_screen_model.dart';
import '../../view_models/splash_screen_view_model.dart';
import '../../widgets/base_model_widget.dart';
import '../../widgets/common/local_image_widget.dart';
import '../../widgets/common/page_slider.dart';

class SplashScreenMobilePortrait
    extends BaseModelWidget<SplashScreenViewModel> {
  const SplashScreenMobilePortrait({super.key});

  @override
  Widget build(BuildContext context, SplashScreenViewModel model) {
    return Scaffold(
      body: (model.showLogo)
          ? const LogoWidget()
          : SingleChildScrollView(
              child: PageSlider(
                viewPortFraction: 1.0,
                aspectRatio: 0.7,
                onPressSkip: () {
                  model.onPressSkip(context);
                },
                pages: [
                  SplashScreenModel(
                    imagePath: 'assets/images/slider/image1.png',
                    title: 'Title 1',
                    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  ),
                  SplashScreenModel(
                    imagePath: 'assets/images/slider/image2.png',
                    title: 'Title 2',
                    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  ),
                  SplashScreenModel(
                    imagePath: 'assets/images/slider/image3.png',
                    title: 'Title 3',
                    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  ),
                ].map(
                  (e) {
                    TextTheme textTheme = Theme.of(context).textTheme;
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 50.0,
                        horizontal: 30.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LocalImageWidget(
                            imagePath: e.imagePath,
                            width: 250.0,
                            height: 250.0,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                  top: 30.0,
                                  bottom: 15.0,
                                ),
                                child: Text(
                                  e.title,
                                  textAlign: TextAlign.center,
                                  style: textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                e.description,
                                textAlign: TextAlign.center,
                                style: textTheme.bodySmall,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
    );
  }
}
