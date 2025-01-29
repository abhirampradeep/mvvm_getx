import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get_mvvm/data/app_exceptions.dart';
import 'package:get_mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('no internet connection');
    } on RequestTimeout {
      throw RequestTimeout('no request');
    }

    return responseJson;
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      print(data);
      print(url);
    }

    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url),
      body: jsonEncode(data)
      );
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('no internet connection');
    } on RequestTimeout {
      throw RequestTimeout('no request');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw Internalexception();
      case 404:
        throw NodataException();
      case 500:
        throw Internalexception();
      default:
        throw Internalexception();
    }
  }
}
