import 'package:book_app/feature/home/presentation/book_details_screen.dart';
import 'package:book_app/feature/home/presentation/home_screen.dart';
import 'package:book_app/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String splashScreen = "/";
  static const String homeScreen = "/homeScreen";
  static const String bookDetailsScreen = "/bookDetailsScreen";

  static Route<dynamic> onGenerateRoute(RouteSettings route) {
    switch (route.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case bookDetailsScreen:
        return MaterialPageRoute(builder: (context) => const BookDetailsScreen());

      default:
        return _defaultRout();
    }
  }

  static _defaultRout() {
    return MaterialPageRoute(
        builder: (context) => const Scaffold(
              body: Center(
                child: Text(
                  "Default Screen",
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ));
  }
}
