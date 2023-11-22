import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/shared/cubit/cubit.dart';
import 'package:login/shared/network/remote/dio_helper.dart';
import 'modules/login/login_screen.dart';
import 'shared/style/theme/dark_theme.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: darkTheme,
        home:  const LoginScreen(),
      ),
    );
  }
}
