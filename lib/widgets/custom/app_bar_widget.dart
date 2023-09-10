import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('101, East Rajabazar, Tejgaon, Dhaka-1215'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Badge(
            backgroundColor: Constants.colorRajah,
            largeSize: 10.0,
            offset: Offset(-2.0, 2.0),
            label: SizedBox(
              width: 2.0,
            ),
            child: Icon(Icons.notifications_outlined),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
