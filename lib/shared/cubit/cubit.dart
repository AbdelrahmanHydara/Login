import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/shared/cubit/states.dart';
import '../network/end_points.dart';
import '../network/remote/dio_helper.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  var formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginUser({
    required String email,
    required String password,
}) {
    emit(LoginLoadingState());

    DioHelper.postDats(
        url: login,
        data:
        {
          "email" :  email,
          "password" : password,
        },
    ).
    then((value)
    {
      print(value.data["token"]);
      print(value.data.toString());
      emit(LoginSuccessState());
    }).
    catchError((errorMessage)
    {
      emit(LoginErrorState(errorMessage: errorMessage.toString()));
    });
  }
}