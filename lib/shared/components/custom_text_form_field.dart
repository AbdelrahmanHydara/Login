import 'package:flutter/material.dart';
import '../style/colors/app_color.dart';

class DefaultTextFormField extends StatelessWidget
{
  const DefaultTextFormField({super.key, required this.controller, required this.hintText,
    required this.validate, required this.type,this.onSubmit,
  });

  final TextEditingController controller;
  final String hintText;
  final Function(String)? onSubmit;
  final String? Function(String?) validate;
  final TextInputType type;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.defaultBackgroundG,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: AppColors.defaultColorW,
        style: const TextStyle(
          color: AppColors.defaultColorW,
        ),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 20,
            color: AppColors.defaultColorG,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 22),
        ),
        keyboardType: type,
        onFieldSubmitted: onSubmit,
        validator: (String? value)
        {
          return validate(value);
        },
      ),
    );
  }
}