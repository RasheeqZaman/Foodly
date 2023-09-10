import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('101, East Rajabazar, Tejgaon, Dhaka-1215'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
