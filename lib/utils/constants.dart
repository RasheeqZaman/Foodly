import 'package:flutter/material.dart';

class Constants {
  static const String title = 'Foodly';

  static const String fontFamily = 'RosaSans';

  static const String baseUrl = 'https://x.com';

  static const Color colorRajah = Color(0xFFF5B358);
  static const Color colorMGYellow = Color(0xFFA1C75C);
  static const Color colorGunmetal = Color(0xFF2A2D37);
  static const Color colorWhite = Colors.white;
  static Color colorGrey = Colors.grey.shade200;

  static const TextStyle textStyleBody = TextStyle(
    fontFamily: fontFamily,
    color: colorGunmetal,
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle textStyleSubHead = TextStyle(
    fontFamily: fontFamily,
    color: colorGunmetal,
    fontSize: 15.0,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle textStyleTitle = TextStyle(
    fontFamily: fontFamily,
    color: colorGunmetal,
    fontSize: 16.0,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle textStyleHeader = TextStyle(
    fontFamily: fontFamily,
    color: colorGunmetal,
    fontSize: 18.0,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle textStyleDisplay = TextStyle(
    fontFamily: fontFamily,
    color: colorGunmetal,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
  );

  static const int _defaultPrimarySwatchIndex = 0;
  static final List<MaterialColor> _primarySwatches =
      _getMaterialColorsFromColors(
    [
      colorRajah,
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
