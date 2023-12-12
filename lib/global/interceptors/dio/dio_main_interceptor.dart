
import 'package:dio/dio.dart';
import 'package:drug_promation/global/controllers/initial_controller.dart';
import 'package:drug_promation/global/models/response/response_main.dart';
import 'package:drug_promation/global/utilities/logger.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';

final InitialController _initialController = Get.find();

InterceptorsWrapper dioMainInterceptor() {
  return InterceptorsWrapper(onRequest: (requestOptions, handler) async {
    // dont send if parameter is null
    requestOptions.queryParameters.removeWhere((key, value) => value == "");

    if (_initialController.token.value != null &&
        _initialController.token.value != "") {
      requestOptions.headers.addAll(
          {'Authorization': 'Bearer ${_initialController.token.value}'});
    } else {
      //var token = await getToken();
      //requestOptions.headers.addAll({'Authorization': 'Bearer ${token}'});
    }
    return handler.next(requestOptions);
  }, onResponse: (response, handler) {
    if (response.requestOptions.data != null) {
      var requestData = response.requestOptions.data as FormData;
      logger("Request Data: ${requestData.fields}");
    }

    logger("Response: ${response.statusCode} ${response.realUri}");
    logger(response.data);
    logger("-------------------------------------------------");

    return handler.next(response);
  }, onError: (DioError e, handler) {
    ResponseMain response = ResponseMain.fromJson(e.response?.data);

    if (e.requestOptions.data != null) {
      var requestData = e.requestOptions.data as FormData;
      logger("Request Data: ${requestData.fields}");
    }

    logger("Error Path: ${e.requestOptions.baseUrl}${e.requestOptions.path}");
    logger("Error Params: ${e.requestOptions.queryParameters}");
    logger("Error: ${e.error}");
    logger(
        "Error Message: ${response.message ?? ''}\n${response.message.toString()}");
    logger("-------------------------------------------------");
    if (_initialController.token.value != "") {
      if (response.statusCode == '403') {
        //_initialController.refreshTokens();
      }
    } else {
      _initialController.token.value = "";
      _initialController.refreshToken.value = "";
      Get.toNamed('/welcome');
      Get.appUpdate();
    }
    return handler.next(e);
  });
}
