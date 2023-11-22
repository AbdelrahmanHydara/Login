import 'package:flutter/material.dart';
import '../../shared/components/components.dart';
import '../../shared/components/default_text_button.dart';
import '../register/register_screen.dart';

class CustomTextButton extends StatelessWidget
{
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Text(
            'Don\'t have an account?',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          DefaultTextButton(
            text: 'Sign Up',
            toUpperCase: false,
            fontSize: 24,
            onPressed: ()
            {
              navigateAndFinish(
                context,const RegisterScreen(),
              );
            },
          ),
        ],
      ),
    );
  }
}
