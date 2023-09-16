import 'package:flutter/material.dart';

import '../../view_models/account_view_model.dart';
import '../../widgets/base_model_widget.dart';

class AccountMobilePortrait extends BaseModelWidget<AccountViewModel> {
  const AccountMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, AccountViewModel model) {
    return const Center(child: Text('Account'));
  }
}
