import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
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
}

class CartAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(
      title: Text('Cart'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
