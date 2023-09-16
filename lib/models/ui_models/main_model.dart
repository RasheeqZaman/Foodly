import 'package:flutter/material.dart';

class MainModel {
  final PreferredSizeWidget Function() appBar;
  final Widget tab;

  MainModel({
    required this.appBar,
    required this.tab,
  });
}
