import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

import '../utils/constants.dart';
import '../utils/ui_utils.dart';

class ResponseModel<T> {
  final int statusCode;
  final String message;
  final T data;

  ResponseModel({
    required this.statusCode,
    this.message = '',
    required this.data,
  });
}

class OnlineRepo {
  Future<ResponseModel<Map<String, dynamic>?>> _getResponseFromHttp({
    String apiUrl = Constants.baseUrl,
    Map<String, String> headers = const {},
    Map<String, String> defaultHeaders = const {
      'Accept': '*/*',
      'Content-Type': 'application/json',
      'Connection': 'keep-alive',
    },
    required String urlExtension,
    Map<String, dynamic>? postBody,
    bool isFormData = false,
    required Future<Response<dynamic>> Function(
      Dio dio,
      String path,
      dynamic data,
      Options? options,
    ) apiMethod,
  }) async {
    try {
      log('C1: waiting for httpResponse: $apiUrl/$urlExtension-> $headers-> ${UIUtils.getRawJsonData(postBody)}');
      Dio dio = Dio();

      Response<dynamic> response = await apiMethod(
        dio,
        '$apiUrl/$urlExtension',
        (isFormData) ? FormData.fromMap(postBody!) : postBody,
        Options(
          headers: {
            ...headers,
            ...defaultHeaders,
          },
          responseType: ResponseType.json,
        ),
      );
      log('C21: received for httpResponse: urlExtension: $apiUrl/$urlExtension --- responseHead: ${response.headers}');
      log('\nC22: received for httpResponse: urlExtension: $apiUrl/$urlExtension --- responseBody: \n');
      JsonEncoder.withIndent(' ' * 4)
          .convert((response.data is Map?) ? response.data : {})
          .split('\n')
          .forEach((e) {
        log(e);
      });

      int statusCode = response.statusCode ?? 404;
      return ResponseModel<Map<String, dynamic>?>(
        statusCode: statusCode,
        data: (statusCode < 200 || statusCode >= 300)
            ? null
            : (response.data is Map?)
                ? response.data
                : {},
      );
    } catch (ex) {
      log('C3: exception in httpResponse: $apiUrl/$urlExtension ${ex.toString()}');
      return ResponseModel<Map<String, dynamic>?>(
        statusCode: 404,
        data: null,
      );
    }
  }
}
