import 'package:flutter/material.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import '../../view_models/account_view_model.dart';
import '../../widgets/base_widget.dart';
import 'account_view_mobile.dart';

class AccountView extends StatelessWidget {
  const AccountView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<AccountViewModel>(
      viewModel: AccountViewModel(),
      child: ScreenTypeLayout<AccountViewModel>(
        mobile: OrientationLayout<AccountViewModel>(
          portrait: (_) => const AccountMobilePortrait(),
        ),
      ),
    );
  }
}
