import 'package:login_task/login/data/models/login_model.dart';
import 'package:login_task/login/data/repo/api_service.dart';
import 'package:login_task/login/data/repo/loginrepo.dart';


class LoginRepoImpl implements LoginRepo {
  const LoginRepoImpl({required this.apiService });
  final ApiService apiService;
  
  @override
  Future<LoginModel> loginUser({required phoneNumber, required password}) async {
    
      var data = await apiService.post(endPoint: 'auth/login' ,
     data: {
      'phone_number' : phoneNumber ,
      'password' : password,
    },
    );
    return LoginModel.fromJson(data);
    
    

  }
  

}