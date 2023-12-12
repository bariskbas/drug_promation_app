import 'package:json_annotation/json_annotation.dart';
part 'response_main.g.dart';

@JsonSerializable()
class ResponseMain {
  dynamic data;
  String? message;
  String? statusCode;
  String? section;

  ResponseMain({this.data, this.statusCode, this.message, this.section});

  factory ResponseMain.fromJson(Map<String, dynamic> json) {
    return _$ResponseMainFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseMainToJson(this);
}
