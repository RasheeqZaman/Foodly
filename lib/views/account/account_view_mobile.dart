import 'package:flutter/material.dart';
import 'package:foodly/utils/constants.dart';
import 'package:foodly/widgets/account/account_item.dart';

import '../../view_models/account_view_model.dart';
import '../../widgets/base_model_widget.dart';
import '../../widgets/common/cached_image_widget.dart';

class AccountMobilePortrait extends BaseModelWidget<AccountViewModel> {
  const AccountMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, AccountViewModel model) {
    return Container(
      color: Constants.colorGrey.withOpacity(0.5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Constants.colorWhite,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: const CachedImageWidget(
                  imageLink: 'https://picsum.photos/id/16/200/200',
                  height: 60.0,
                  width: 60.0,
                  boxShape: BoxShape.circle,
                ),
                title: const Text('Rasheeq Zaman'),
                subtitle: const Text('+8801890123456'),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                titleTextStyle: Constants.textStyleSubHead.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                subtitleTextStyle: Constants.textStyleBody.copyWith(
                  color: Constants.colorGunmetal.withOpacity(0.5),
                ),
              ),
            ),
            const AccountItem(
              title: 'My Address',
              iconData: Icons.location_on_rounded,
            ),
            Divider(
              height: 1.0,
              color: Constants.colorGrey.withOpacity(0.5),
            ),
            const AccountItem(
              title: 'Digital Payment',
              iconData: Icons.payment_rounded,
            ),
            Divider(
              height: 1.0,
              color: Constants.colorGrey.withOpacity(0.5),
            ),
            const AccountItem(
              title: 'History',
              iconData: Icons.history_rounded,
            ),
            Divider(
              height: 1.0,
              color: Constants.colorGrey.withOpacity(0.5),
            ),
            const AccountItem(
              title: 'Get Discount',
              iconData: Icons.discount_rounded,
            ),
            Divider(
              height: 1.0,
              color: Constants.colorGrey.withOpacity(0.5),
            ),
            const AccountItem(
              title: 'Support',
              iconData: Icons.support_agent_rounded,
            ),
            const SizedBox(height: 50.0),
            Container(
              color: Constants.colorWhite,
              child: ListTile(
                leading: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      size: 18.0,
                    ),
                  ],
                ),
                title: const Text('Log Out'),
                titleTextStyle: Constants.textStyleBody.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
