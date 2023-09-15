import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: Constants.colorGrey,
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        ),
        child: const Row(
          children: [
            Expanded(
              child: Text('101, East Rajabazar, Tejgaon, Dhaka-1215'),
            ),
            Icon(Icons.arrow_drop_down_outlined),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Badge(
            backgroundColor: Constants.colorRajah,
            child: Icon(Icons.notifications_outlined),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
