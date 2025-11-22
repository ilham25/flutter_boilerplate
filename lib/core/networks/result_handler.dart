import 'package:flutter_boilerplate/core/networks/error_handler.dart';

class Results<T> {
  final String message;
  final ResponseCode responseCode;
  final Map<String, dynamic>? data;

  Results({
    required this.responseCode,
    required this.message,
    required this.data,
  });
}