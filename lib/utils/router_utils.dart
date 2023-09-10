import 'package:flutter/material.dart';

import '../views/home/home_view.dart';

enum MyRouterName {
  home,
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
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(child: Text('No route defined for ${settings.name}')),
      ),
    );
  }
}
