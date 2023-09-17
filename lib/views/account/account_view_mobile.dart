import 'package:flutter/material.dart';

import '../../view_models/account_view_model.dart';
import '../../widgets/base_model_widget.dart';
import '../../widgets/common/cached_image_widget.dart';

class AccountMobilePortrait extends BaseModelWidget<AccountViewModel> {
  const AccountMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, AccountViewModel model) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: CachedImageWidget(
              imageLink: 'https://picsum.photos/id/16/200/200',
              height: 60.0,
              width: 60.0,
              boxShape: BoxShape.circle,
            ),
            title: Text('Rasheeq Zaman'),
            subtitle: Text('+8801890123456'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(Icons.location_on_rounded),
            title: Text('My Address'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(Icons.payment_rounded),
            title: Text('Digital Payment'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(Icons.history_rounded),
            title: Text('History'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(Icons.discount_rounded),
            title: Text('Get Discount'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(Icons.support_agent_rounded),
            title: Text('Support'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
          ),
        ],
      ),
    );
  }
}
