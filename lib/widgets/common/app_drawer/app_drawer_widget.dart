import 'package:flutter/material.dart';

import '../../../utils/router_utils.dart';
import 'app_drawer_header.dart';
import 'app_drawer_list_tile.dart';

class AppDrawerWidget extends StatelessWidget {
  const AppDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const AppDrawerHeader(),
          AppDrawerListTile(
            listTitle: 'Home',
            iconData: Icons.home,
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                MyRouterName.main.getName(),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
