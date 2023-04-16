import 'package:dio/dio.dart';

class DioHelper {

   static Dio? dio;

   static init(){
    dio=Dio(BaseOptions(
      baseUrl: "http://127.0.0.1:8000/api/",
      receiveDataWhenStatusError: true,
      
      ));

  }

  static Future<Response> getData({
    required String url,
    required Map<String,dynamic> query
    }) async {
      return await dio!.get(
        url,
        queryParameters: query);

  }

  static Future<Response> postData({
    required String url,
    Map<String,dynamic>? query,
    required Map<String,dynamic> data,
    }) async {
      return await dio!.post(
        url,
        queryParameters: query,
        data: data
        );}
}