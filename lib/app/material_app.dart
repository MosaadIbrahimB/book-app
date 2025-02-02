import 'package:book_app/core/utils/app_theme.dart';
import 'package:book_app/feature/home/presentation/book_details_screen.dart';
import 'package:book_app/feature/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/route/app_route.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,

      child: MaterialApp(
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        // initialRoute: AppRoute.homeScreen,
        // onGenerateRoute: AppRoute.onGenerateRoute,
home: BookDetailsScreen(),
      ),
    );
  }
}
