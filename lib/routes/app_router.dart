import 'package:flutter/material.dart';
import 'package:connect/features/home/home_page.dart';

sealed class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _buildPageRoute(const HomePage());
      default:
        return MaterialPageRoute(
          builder: (context) => Container(),
        );
    }
  }

  static MaterialPageRoute _buildPageRoute(Widget page) {
    return MaterialPageRoute(
      builder: (context) => page,
    );
  }
}
