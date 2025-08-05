import 'package:flutter/material.dart';
import '../views/auth/login_view.dart';
import '../views/auth/register_view.dart';
import '../views/home/home_view.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginView());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case home:
        return MaterialPageRoute(builder: (_) => HomeView());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
