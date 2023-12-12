
import 'package:dio/dio.dart';

/*var baseUrl = "https://dev-api.enexpress.com.tr/api";
var pathUrl = "https://dev-api.enexpress.com.tr/images/company_promotions";
var companyId = 1;
var language = getLanguage();*/

BaseOptions dioOptions = BaseOptions(
    baseUrl: "",
    responseType: ResponseType.json,
    headers: {'accept': '*/*'});
