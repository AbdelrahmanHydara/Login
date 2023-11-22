import 'package:flutter/material.dart';
import '../style/colors/app_color.dart';

class DefaultTextButton extends StatelessWidget
{

  final Function() onPressed;
  final String text;
  final double fontSize;
  final bool toUpperCase;

  const DefaultTextButton({
    super.key,required
    this.onPressed,
    required this.text,
    required this.fontSize,
    required this.toUpperCase});

  @override
  Widget build(BuildContext context)
  {
    return TextButton(
      onPressed: onPressed ,
      child: Text(
        toUpperCase? text.toUpperCase() : text,
        style: TextStyle(
          fontSize: fontSize,
          color: AppColors.defaultColorW,
        ),
      ),
    );
  }
}