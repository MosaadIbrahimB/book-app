import 'package:book_app/core/utils/app_consrain.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.scaffoldColor,
    textTheme: TextTheme(
        titleMedium: AppTextStyle.mont18Gray,
        bodyMedium: AppTextStyle.mont20White,
        displayMedium: AppTextStyle.gt20White,
        displayLarge: AppTextStyle.gt30White),
  );
}

class AppTextStyle {
  static TextStyle mont18Gray = TextStyle(
      fontSize: 18,
      color: Colors.grey,
      fontFamily: AppConstrain.fontMontserrat);
  static TextStyle mont20White = TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontFamily: AppConstrain.fontMontserrat);
  static TextStyle gt20White = TextStyle(
      fontSize: 20,
      color: Colors.white,
      // fontWeight: FontWeight.bold,
      fontFamily: AppConstrain.fontGt);
  static TextStyle gt30White = TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontFamily: AppConstrain.fontMontserrat);
}
