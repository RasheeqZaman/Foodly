import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const SizedBox(
          height: double.infinity,
          width: double.infinity,
        ),
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/logo.png',
            width: 150.0,
            height: 150.0,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 100.0),
          child: Text(
            'Welcome to Foodly',
            style: Constants.textStyleBody,
          ),
        ),
      ],
    );
  }
}
