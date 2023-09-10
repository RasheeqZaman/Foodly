import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 100.0,
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: SizedBox(
                height: 50.0,
                width: 50.0,
                child: SpinKitFadingCube(
                  color: Theme.of(context).colorScheme.primary,
                  size: 50.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
