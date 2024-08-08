import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_task/bloc/cubit/login_cubit.dart';
import 'package:login_task/login/data/repo/api_service.dart';

import 'package:login_task/login/data/repo/repoimpl.dart';
import 'package:login_task/screens/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        loginRepo: LoginRepoImpl(
          apiService: ApiService(
            dio: Dio(),
          ),
        ),
      ),
      child:  LoginScreenBody(),
    );
  }
}
