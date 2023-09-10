import 'package:flutter/material.dart';

import '../enums/device_screen_type.dart';

class UIUtils{
  static DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
    double deviceWidth = mediaQuery.size.shortestSide;
    return (deviceWidth > 600) ? DeviceScreenType.tablet : DeviceScreenType.mobile;
  }

  static String? getRawJsonData(dynamic json) {
    if(json == null) {
      return null;
    }

    if(json is String) {
      return '"$json"';
    }

    if(json is int) {
      return json.toString();
    }

    if(json is double) {
      return json.toString();
    }

    if(json is bool) {
      return json.toString();
    }

    if(json is Map<String, dynamic>) {
      return '{${json.entries.map((e) => '"${e.key}": ${getRawJsonData(e.value)}').toList().join(', ')}}';
    }

    if(json is List) {
      return '[${json.map((e) => '${getRawJsonData(e)}').toList().join(', ')}]';
    }

    return null;
  }

  static String printDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    if (duration.inHours > 0) {
      return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
    } else {
      return "$twoDigitMinutes:$twoDigitSeconds";
    }
  }
}