import 'package:flutter/material.dart';

class AppDrawerListTile extends StatelessWidget {
  const AppDrawerListTile({
    Key? key,
    required this.listTitle,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  final String listTitle;
  final IconData iconData;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        listTitle,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      leading: Icon(
        iconData,
        color: Theme.of(context).colorScheme.primary,
        size: 25.0,
      ),
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
    );
  }
}
