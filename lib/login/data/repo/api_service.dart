// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

const baseUrl =
    'https://touba-apis-dev-64fedbe747b6.herokuapp.com/mobile/';

class ApiService {
   final Dio dio;
  ApiService({
    required this.dio,
  });
  Future<Map<String, dynamic>> post( {required endPoint, required data})async {
    final response = await dio.post(
      '$baseUrl$endPoint',
      data: data,
      options: Options(
        headers: {},
      ),
    );
    return response.data;
  }
}
