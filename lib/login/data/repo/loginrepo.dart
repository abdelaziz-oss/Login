import 'package:login_task/login/data/models/login_model.dart';

abstract class LoginRepo{
  Future<LoginModel> loginUser({required phoneNumber , required password});
}