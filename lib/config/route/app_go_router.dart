import 'package:book_app/core/widget/not_found_screen.dart';
import 'package:book_app/feature/home/presentation/book_details_screen.dart';
import 'package:book_app/feature/home/presentation/home_screen.dart';
import 'package:book_app/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppGoRouter {
  static const String splashScreen = "/";
  static const String homeScreen = "/homeScreen";
  static const String bookDetailsScreen = "/bookDetailsScreen";

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashScreen,
        builder: (BuildContext context, GoRouterState state) {
          return SplashScreen();
        },
      ),
      GoRoute(
        path: homeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: bookDetailsScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsScreen();
        },
      ),

    ],
    errorBuilder: (context, state) => NotFoundScreen(),
  );

}

