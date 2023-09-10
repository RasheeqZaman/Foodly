import 'package:flutter/material.dart';

import '../views/home/home_view.dart';
import '../views/splash_screen/splash_screen_view.dart';

enum MyRouterName {
  home,
  splashScreen,
}

extension ParseToString on MyRouterName {
  String getName() {
    if (this == MyRouterName.home) return '/';
    return toString();
  }
}

class MyRouter {
  static final Map<String, Widget Function(BuildContext)> routes = {
    MyRouterName.home.getName(): (_) => const HomeView(),
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
