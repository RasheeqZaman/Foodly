import 'package:flutter/material.dart';

import '../enums/device_screen_type.dart';
import '../view_models/base_view_model.dart';
import '../widgets/base_model_widget.dart';
import 'responsive_builder.dart';

class ScreenTypeLayout<T extends BaseViewModel> extends BaseModelWidget<T> {
  final BaseModelWidget<T> mobile;
  final BaseModelWidget<T>? tablet;

  const ScreenTypeLayout({
    Key? key,
    required this.mobile,
    this.tablet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, T model) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return (sizingInformation.deviceScreenType == DeviceScreenType.tablet)
          ? (tablet == null)
              ? mobile
              : tablet!
          : mobile;
    });
  }
}
