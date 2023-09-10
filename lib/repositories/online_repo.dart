import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pranshakti/models/meals_list_model.dart';

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

  Future<ResponseModel<List<MealsListModel>?>> getMealsListModels() async {
    return ResponseModel(
      statusCode: 200,
      data: [
        MealsListModel(
          imagePath: 'assets/fitness_app/breakfast.png',
          titleTxt: 'Breakfast',
          kacl: 525,
          meals: <String>['Bread,', 'Peanut butter,', 'Apple'],
          startColor: 0xFFFA7D82,
          endColor: 0xFFFFB295,
        ),
        MealsListModel(
          imagePath: 'assets/fitness_app/lunch.png',
          titleTxt: 'Lunch',
          kacl: 602,
          meals: <String>['Salmon,', 'Mixed veggies,', 'Avocado'],
          startColor: 0xFF738AE6,
          endColor: 0xFF5C5EDD,
        ),
        MealsListModel(
          imagePath: 'assets/fitness_app/snack.png',
          titleTxt: 'Snack',
          kacl: 0,
          meals: <String>['Recommend:', '800 kcal'],
          startColor: 0xFFFE95B6,
          endColor: 0xFFFF5287,
        ),
        MealsListModel(
          imagePath: 'assets/fitness_app/dinner.png',
          titleTxt: 'Dinner',
          kacl: 0,
          meals: <String>['Recommend:', '703 kcal'],
          startColor: 0xFF6F72CA,
          endColor: 0xFF1E1466,
        ),
      ],
    );
  }
}
