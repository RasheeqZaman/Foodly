import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    Key? key,
    required this.title,
    required this.onPress,
    this.style,
  }) : super(key: key);

  final String title;
  final ButtonStyle? style;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: style,
      onPressed: () {
        onPress();
      },
      child: Text(title),
    );
  }
}
