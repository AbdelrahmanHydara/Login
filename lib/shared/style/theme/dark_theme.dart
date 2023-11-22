import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../colors/app_color.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.defaultBackground,
  primaryColor: AppColors.primaryColor,
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.defaultBackground,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.bold,
      color: AppColors.defaultColorW,
    ),
    displaySmall: TextStyle(
      fontSize: 20,
      color: AppColors.defaultColorG,
    ),
  ),
);