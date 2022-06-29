import 'package:dio/dio.dart';
// base url: https://newsapi.org/
// method: v2/everything?
// q=apple&from=2021-08-26&to=2021-08-26&sortBy=popularity&apiKey=a6667b7326c04ca2811a0a48fdb33be5
class DioHelper {
  static Dio? dio;


  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://newsapi.org/",
        receiveDataWhenStatusError: true,
      )
    );
  }
  
  static Future<Response?> getData({
     required String url,
   required Map<String, dynamic> query,
    }) async
  {
    return await dio!.get(url, queryParameters: query);
  }
}