import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/components/components.dart';
import '../../shared/components/custom_text_form_field.dart';
import '../../shared/components/default_material_button.dart';
import '../../shared/components/my_conditional_builder.dart';
import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/states.dart';
import '../../shared/style/colors/app_color.dart';
import '../home/home_screen.dart';

class CustomTextFieldLogin extends StatelessWidget
{
  const CustomTextFieldLogin({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<LoginCubit,LoginStates>(
        listener: (context,state)
        {
          if(state is LoginSuccessState)
          {
            navigateAndFinish(context,const HomeScreen());
          }
          if(state is LoginErrorState)
          {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.error,
              animType: AnimType.rightSlide,
              title: 'Error',
              desc: "Please verify the information entered",
            ).show();
          }
        },
        builder: (context,state)
        {
          return Form(
            key: LoginCubit.get(context).formKey,
            child: Column(
              children:
              [
                DefaultTextFormField(
                  controller: LoginCubit.get(context).emailController,
                  hintText: 'Email',
                  type: TextInputType.emailAddress,
                  validate: (value) {
                    if (value == null || value.isEmpty)
                    {
                      return 'Please enter some text';
                    }
                    if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                      return 'Please a valid Email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                DefaultTextFormField(
                  controller: LoginCubit.get(context).passwordController,
                  hintText: 'Password',
                  type: TextInputType.visiblePassword,
                  validate: (value) {
                    if (value == null || value.isEmpty)
                    {
                      return 'Please enter some text';
                    }
                    if(value.length <= 4)
                    {
                      return 'Please enter long password';
                    }
                    return null;
                  },
                  onSubmit: (value) {
                    if(LoginCubit.get(context).formKey.currentState!.validate())
                    {
                      LoginCubit.get(context).loginUser(
                      email: LoginCubit.get(context).emailController.text,
                      password: LoginCubit.get(context).passwordController.text,
                    );
                  }
                },
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 70,
                    start: 45,
                    end: 45,
                  ),
                  child: MyConditionalBuilder(
                    condition: state is! LoginLoadingState,
                    builder: defaultMaterialButton(
                        text: 'Login',
                        height: 60,
                        onTap: ()
                        {
                          if(LoginCubit.get(context).formKey.currentState!.validate())
                          {
                            LoginCubit.get(context).loginUser(
                              email: LoginCubit.get(context).emailController.text,
                              password: LoginCubit.get(context).passwordController.text,
                            );
                          }
                        }
                    ),
                    fallback: const Center(child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}
