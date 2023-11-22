import 'package:dio/dio.dart';

class DioHelper
{
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://shopping-app-vdmq.onrender.com/api/auth/",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> postDats({
    required String url,
    required Map<String,dynamic> data,
    Map<String,dynamic>? queryParameters,
}) async {
    return await dio.post(
      url,
      data: data,
      queryParameters: queryParameters,
    );
  }
}