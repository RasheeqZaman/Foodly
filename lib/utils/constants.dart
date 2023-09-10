import 'package:flutter/material.dart';

class Constants {
  static const String title = 'Pranshakti';

  static const String fontFamily = 'Roboto';

  static const String baseUrl = 'https://x.com';

  static const Color colorWhite1 = Color(0xFFF2F3F8);
  static const Color colorWhite2 = Color(0xFFFFFFFF);
  static const Color colorNearlyDarkBlue = Color(0xFF2633C5);
  static const Color colorGrey = Color(0xFF3A5160);
  static const Color colorLightBlack = Color(0xFF17262A);
  static const Color colorLighterBlack = Color(0xFF253840);
  static const Color colorBrightGrey = Color(0xFF4A6572);
  static const Color colorNearlyWhite = Color(0xFFFAFAFA);
  static const Color colorNearlyBlack = Color(0xFF213333);

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
