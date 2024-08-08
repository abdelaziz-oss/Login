import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:login_task/bloc/cubit/login_cubit.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});
  @override
  LoginScreenBodyState createState() => LoginScreenBodyState();
}

class LoginScreenBodyState extends State<LoginScreenBody> {
  get c => context.read<LoginCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Login Screen'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                TextField(
                  controller: c.phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: c.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    c.loginValidate();
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {
        if (state is LoginSuccess) {
          EasyLoading.dismiss();
          EasyLoading.showSuccess('login success');
        }
      },
    );
  }
}
