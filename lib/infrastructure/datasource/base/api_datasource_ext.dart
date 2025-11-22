
import 'package:flutter_boilerplate/core/networks/api_client.dart';
import 'package:flutter_boilerplate/domain/entities/user/user_entity.dart';
import 'package:flutter_boilerplate/infrastructure/datasource/base/api_datasource.dart';
import 'package:flutter_boilerplate/domain/entities/auth/auth_entity.dart';

extension APIExtension on ApiClient {
  /// AUTH ENTITY
  ApiDataSource<AuthEntity> get auth =>
      ApiDataSource<AuthEntity>(this, AuthEntity.fromJson);

  /// USER ENTITY
  ApiDataSource<UserEntity> get user =>
      ApiDataSource<UserEntity>(this, UserEntity.fromJson);
}