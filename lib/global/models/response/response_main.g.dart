// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseMain _$ResponseMainFromJson(Map<String, dynamic> json) => ResponseMain(
      data: json['data'],
      statusCode: json['statusCode'] as String?,
      message: json['message'] as String?,
      section: json['section'] as String?,
    );

Map<String, dynamic> _$ResponseMainToJson(ResponseMain instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'statusCode': instance.statusCode,
      'section': instance.section,
    };
