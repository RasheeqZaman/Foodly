import 'package:flutter/material.dart';
import 'package:foodly/views/splash_screen/splash_screen_view.dart';

import '../views/main/main_view.dart';

enum MyRouterName {
  main,
  splashScreen,
}

extension ParseToString on MyRouterName {
  String getName() {
    if (this == MyRouterName.main) return '/';
    return toString();
  }
}

class MyRouter {
  static final Map<String, Widget Function(BuildContext)> routes = {
    MyRouterName.main.getName(): (_) => const MainView(),
    MyRouterName.splashScreen.getName(): (_) => const SplashScreenView(),
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(child: Text('No route defined for ${settings.name}')),
      ),
    );
  }
}
