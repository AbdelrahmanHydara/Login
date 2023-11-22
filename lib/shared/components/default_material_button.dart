import 'package:flutter/material.dart';
import '../style/colors/app_color.dart';

Widget defaultMaterialButton({
  required String text,
  required Function() onTap,
  double radius = 28,
  double? width,
  double? height,
}) => InkWell(
  onTap: onTap,
  child: Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(radius),
    ),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.defaultColorW,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
);