import 'package:flutter_boilerplate/core/networks/error_handler.dart';

class BaseResponse<T> {
  final String message;
  final ResponseCode responseCode;
  final T data;

  BaseResponse({
    required this.message,
    required this.responseCode,
    required this.data,
  });

  factory BaseResponse.fromJson(
      Map<String, dynamic> json, ResponseCode responseCode, Function fromJsonData) {
    return BaseResponse(
      message: json['message'] ?? "",
      responseCode: responseCode,
      data: json['data'] != null ? fromJsonData(json['data']) : fromJsonData(<String, dynamic>{})
    );
  }
}