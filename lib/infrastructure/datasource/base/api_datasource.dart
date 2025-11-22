import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/models/base_response.dart';
import 'package:flutter_boilerplate/core/models/base_response_list.dart';
import 'package:flutter_boilerplate/core/networks/api_client.dart';
import 'package:flutter_boilerplate/core/networks/error_handler.dart';
import 'package:flutter_boilerplate/core/networks/result_handler.dart';
// Define the generic API data source class
class ApiDataSource<T> {
  final ApiClient apiClient;
  final T Function(Map<String, dynamic>) fromJson;

  ApiDataSource(this.apiClient, this.fromJson);

  Future<Either<Failure, T>> get(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await apiClient.get(
        endpoint,
        queryParameters: queryParameters,
      );
      final responseCode = ResponseCode.fromCode(response.statusCode!);
      final baseResponse = BaseResponse<T>.fromJson(
        response.data,
        responseCode,
        fromJson,
      );
      if (baseResponse.responseCode == ResponseCode.success) {
        return Right(baseResponse.data);
      }
      return Left(Failure(message: baseResponse.message, statusCode: responseCode));
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      return Left(Failure(message: e.toString(), statusCode: ResponseCode.badRequest));
    }
  }

  Future<Either<Failure, List<T>>> getList(String endpoint, {Map<String, dynamic>? queryParams}) async {
    try {
      final response = await apiClient.get(endpoint, queryParameters: queryParams);
      final responseCode = ResponseCode.fromCode(response.statusCode!);
      final baseResponse = BaseResponseList<T>.fromJson(
        response.data,
        responseCode,
        (data) => data.map((item) => fromJson(item)).toList(),
      );
      if (baseResponse.responseCode == ResponseCode.success) {
        return Right(baseResponse.data);
      }
      return Left(Failure(message: baseResponse.message, statusCode: responseCode));
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      return Left(Failure(message: e.toString(), statusCode: ResponseCode.badRequest));
    }
  }

  Future<Either<Failure, T>> post(String endpoint, Map<String, dynamic> data, {bool formData = false}) async {
    try {
      final response = await apiClient.post(endpoint, data: formData ? FormData.fromMap(data) : data);
      final responseCode = ResponseCode.fromCode(response.statusCode!);
      final baseResponse = BaseResponse<T>.fromJson(
        response.data,
        responseCode,
        fromJson,
      );
      if (baseResponse.responseCode == ResponseCode.created || baseResponse.responseCode == ResponseCode.success) {
        return Right(baseResponse.data);
      }
      return Left(Failure(message: baseResponse.message, statusCode: responseCode));
    } catch (e, stacktrace) {
      debugPrint("ERROR POST: ${e.toString()}");
      debugPrint("STACKTRACE POST: ${stacktrace.toString()}");
      return Left(Failure(message: e.toString(), statusCode: ResponseCode.badRequest));
    }
  }

  Future<Either<Failure, Results>> postNew(String endpoint, Map<String, dynamic> data, {bool formData = false}) async {
    try {
      final response = await apiClient.post(endpoint, data: formData ? FormData.fromMap(data) : data);
      final responseCode = ResponseCode.fromCode(response.statusCode!);
      if (responseCode == ResponseCode.created || responseCode == ResponseCode.success) {
        return Right(Results(
          responseCode: responseCode,
          message: response.data['message'],
          data: response.data['payload']?['data']
        ));
      }
      return Left(Failure(message: response.data['message'], statusCode: responseCode));
    } catch (e, stacktrace) {
      debugPrint("ERROR POST: ${e.toString()}");
      debugPrint("STACKTRACE POST: ${stacktrace.toString()}");
      return Left(Failure(message: e.toString(), statusCode: ResponseCode.badRequest));
    }
  }

  Future<Either<Failure, T>> delete(String endpoint) async {
    try {
      final response = await apiClient.delete(endpoint);
      final responseCode = ResponseCode.fromCode(response.statusCode!);
      final baseResponse = BaseResponse<T>.fromJson(
        response.data,
        responseCode,
        fromJson,
      );
      if (baseResponse.responseCode == ResponseCode.success) {
        return Right(baseResponse.data);
      }
      return Left(Failure(message: baseResponse.message, statusCode: responseCode));
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      return Left(Failure(message: e.toString(), statusCode: ResponseCode.badRequest));
    }
  }

  Future<Either<Failure, T>> put(String endpoint, Map<String, dynamic> data, {bool formData = false}) async {
    try {
      final response = await apiClient.put(endpoint, data: formData ? FormData.fromMap(data) : data);
      final responseCode = ResponseCode.fromCode(response.statusCode!);
      final baseResponse = BaseResponse<T>.fromJson(
        response.data,
        responseCode,
        fromJson,
      );
      if (baseResponse.responseCode == ResponseCode.success) {
        return Right(baseResponse.data);
      }
      return Left(Failure(message: baseResponse.message, statusCode: responseCode));
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      return Left(Failure(message: e.toString(), statusCode: ResponseCode.badRequest));
    }
  }
}