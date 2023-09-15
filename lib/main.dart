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
        appBarTheme: AppBarTheme(
          backgroundColor: Constants.colorWhite,
          foregroundColor: Constants.colorGunmetal,
          elevation: 0.0,
          actionsIconTheme: const IconThemeData(
            color: Constants.colorGunmetal,
          ),
          centerTitle: true,
          titleSpacing: 20.0,
          titleTextStyle: Constants.textStyleBody.copyWith(
            fontWeight: FontWeight.bold,
          ),
          shape: Border(
            bottom: BorderSide(
              color: Constants.colorGrey.withOpacity(0.5),
              width: 2.0,
            ),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            size: 22.0,
          ),
          unselectedIconTheme: IconThemeData(
            size: 22.0,
          ),
          selectedLabelStyle: Constants.textStyleBody,
          unselectedLabelStyle: Constants.textStyleBody,
          selectedItemColor: Constants.colorRajah,
          unselectedItemColor: Constants.colorGunmetal,
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
        fontFamily: Constants.fontFamily,
        primarySwatch: Constants.defaultPrimarySwatch,
      ),
      routes: MyRouter.routes,
      onGenerateRoute: MyRouter.generateRoute,
      initialRoute: initRouterName.getName(),
    );
  }
}