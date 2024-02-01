import 'dart:convert';

import 'package:dio/dio.dart';

class HttpUtil {
  final dio = Dio();

  dynamic get(String url) async {
    Response response = await dio.get(url);
    dynamic jsonResponse = jsonDecode(response.toString());
    return jsonResponse;
  }
}
