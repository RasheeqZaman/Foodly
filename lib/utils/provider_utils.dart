import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../blocs/settings_bloc.dart';

class ProviderUtils {
  static Widget init({required Widget widget}) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SettingsBloc>(create: (_) => SettingsBloc()),
      ],
      child: widget,
    );
  }
}