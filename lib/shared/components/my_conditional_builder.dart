import 'package:flutter/material.dart';

class MyConditionalBuilder extends StatelessWidget
{
  final bool condition;
  final Widget builder;
  final Widget fallback;

  const MyConditionalBuilder({super.key,
    required this.condition,
    required this.builder,
    required this.fallback,
  });

  @override
  Widget build(BuildContext context)
  {
    if (condition) return builder;
    return fallback;
  }
}