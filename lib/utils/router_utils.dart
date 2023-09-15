import 'package:flutter/material.dart';

import '../views/main/main_view.dart';

enum MyRouterName {
  main,
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
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(child: Text('No route defined for ${settings.name}')),
      ),
    );
  }
}
