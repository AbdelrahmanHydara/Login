import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget
{
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Text(
          "Register Screen",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
