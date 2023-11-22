import 'package:flutter/material.dart';
import '../widget/custom_header.dart';
import '../widget/custom_text_button.dart';
import '../widget/custom_text_field_login.dart';

class LoginScreen extends StatelessWidget
{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                CustomHeader(),
                CustomTextFieldLogin(),
                CustomTextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
