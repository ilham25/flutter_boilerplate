

import 'package:dartz/dartz.dart';
import 'package:flutter_boilerplate/core/constant/endpoint.dart';
import 'package:flutter_boilerplate/core/networks/api_client.dart';
import 'package:flutter_boilerplate/core/networks/error_handler.dart';
import 'package:flutter_boilerplate/domain/entities/user/user_entity.dart';
import 'package:flutter_boilerplate/infrastructure/datasource/base/api_datasource_ext.dart';

class UserDataSource {
  final ApiClient apiClient;
  UserDataSource(this.apiClient);

  Future<Either<Failure, List<UserEntity>>> getUsers({Map<String, dynamic>? params}) async
  => apiClient.user.getList(Endpoint.users, queryParams: params);
}