import 'dart:async';

import 'package:book_app/config/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animationPosition;
  late Animation<double> animationOpacity;

  @override
  void initState() {
    super.initState();
    firstFunction();
    goToHome();
  }

  @override
  Widget build(BuildContext context) {
    // goToHome(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/logo.svg",
              height: 50,
            ),
            SizedBox(height: 15),
            SlideTransition(
              position: animationPosition,
              child: FadeTransition(
                opacity: animationOpacity,
                child: Text(
                  "Read Free Books",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  firstFunction() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    animationPosition = Tween<Offset>(begin: Offset(0, 3), end: Offset.zero)
        .animate(animationController);
    animationOpacity =
        Tween<double>(begin: 0.2, end: 1.0).animate(animationController);
    animationController.forward();
  }

  goToHome() {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () {
        if (mounted) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoute.homeScreen,
            (route) => false,
          );
        }
      },
    );
  }

  @override
  void dispose() {

    animationController.dispose();
    super.dispose();


  }
}
