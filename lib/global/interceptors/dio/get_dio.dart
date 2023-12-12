// ignore_for_file: avoid_single_cascade_in_expression_statements
import 'package:dio/dio.dart';
import 'package:drug_promation/global/interceptors/dio/dio_main_interceptor.dart';

Dio getDio(BaseOptions basedioOptions) {
  Dio dio = Dio(basedioOptions);
  dio.interceptors..add(dioMainInterceptor());
  return dio;
}
