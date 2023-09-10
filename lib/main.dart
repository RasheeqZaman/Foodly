import 'package:flutter/material.dart';

import 'repositories/hive_repo.dart';
import 'utils/constants.dart';
import 'utils/locator_utils.dart';
import 'utils/provider_utils.dart';
import 'utils/router_utils.dart';

MyRouterName initRouterName = MyRouterName.home;

void main() async {
  await initPrefs();

  runApp(ProviderUtils.init(
    widget: const MyApp(),
  ));
}

Future<void> initPrefs() async {
  WidgetsFlutterBinding.ensureInitialized();

  LocatorUtils.init();
  await HiveBox.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.title,
      theme: ThemeData(
        fontFamily: Constants.fontFamily,
        primarySwatch: Constants.defaultPrimarySwatch,
      ),
      routes: MyRouter.routes,
      onGenerateRoute: MyRouter.generateRoute,
      initialRoute: initRouterName.getName(),
    );
  }
}