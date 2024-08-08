import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:login_task/login/data/repo/loginrepo.dart';
import 'package:login_task/screens/home_screen.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {

   final LoginRepo loginRepo ;
  final TextEditingController phoneController =TextEditingController();
  final TextEditingController passwordController =TextEditingController(); 
  GlobalKey<FormState> loginKey = GlobalKey();
  LoginCubit({required this.loginRepo ,}) : super(LoginInitial());
  
  BuildContext? get context => null;
  Future<void> loginUser()async{
     await loginRepo.loginUser(phoneNumber: phoneController, password: passwordController);
  emit(LoginSuccess());
  }
  void loginValidate(){
    if(loginKey.currentState!.validate()){
      loginUser();
      Navigator.of(context!).push(MaterialPageRoute(builder: (ctx)=>const  HomeScreen() ));
    }
  }
}
