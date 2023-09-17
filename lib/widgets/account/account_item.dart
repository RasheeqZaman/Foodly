import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class AccountItem extends StatelessWidget {
  const AccountItem({
    super.key,
    required this.title,
    required this.iconData,
  });

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.colorWhite,
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, size: 18.0),
          ],
        ),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios_outlined),
        titleTextStyle: Constants.textStyleBody.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
