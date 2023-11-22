import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget
{
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Text(
            "Welcome Back!",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "Enter Your Email And Password",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
