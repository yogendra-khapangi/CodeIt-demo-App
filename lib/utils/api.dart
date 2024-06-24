import 'package:dio/dio.dart';

class Api {
  static final dio = Dio(
    // BaseOptions(baseUrl: "https://codeit.com.np/api/", headers: {
    BaseOptions(baseUrl: "https://website.codeitapps.com/api/", headers: {
      // BaseOptions(baseUrl: "http://192.168.144.92:8000/api/", headers: {
      'Accept': 'application/json',
      'Content-type': 'application/json'
    }),
  );
}
