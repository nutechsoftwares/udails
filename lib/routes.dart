import 'package:flutter/material.dart';
import 'views/spalsh.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "splash":
        return MaterialPageRoute(builder: (_) => Splash());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
