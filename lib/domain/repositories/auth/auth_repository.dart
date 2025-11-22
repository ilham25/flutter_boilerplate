
import 'package:dartz/dartz.dart';
import 'package:flutter_boilerplate/core/networks/error_handler.dart';
import 'package:flutter_boilerplate/domain/entities/auth/auth_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthEntity>> login(String username, String password);
  Future<void> saveAuth(AuthEntity auth);
  Future<bool> getSession();
  Future<String?> getToken();
  Future<bool> isAuth();
}