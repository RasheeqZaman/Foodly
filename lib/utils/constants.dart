import 'package:flutter/material.dart';

class Constants {
  static const String title = 'Foodly';

  static const String fontFamily = 'Roboto';

  static const String baseUrl = 'https://x.com';

  static const int _defaultPrimarySwatchIndex = 0;
  static final List<MaterialColor> _primarySwatches =
      _getMaterialColorsFromColors(
    [
      Colors.blue,
    ],
  );

  static MaterialColor getPrimarySwatch(int index) {
    return (index < 0 || index >= _primarySwatches.length)
        ? Colors.blue
        : _primarySwatches[index];
  }

  static MaterialColor get defaultPrimarySwatch =>
      getPrimarySwatch(_defaultPrimarySwatchIndex);

  static List<MaterialColor> _getMaterialColorsFromColors(List<Color> colors) {
    return colors
        .map((e) => MaterialColor(
              e.value,
              List.generate(
                10,
                (index) => e,
              ).asMap().map((k, v) => MapEntry(((k == 0) ? 50 : k * 100), v)),
            ))
        .toList();
  }
}
