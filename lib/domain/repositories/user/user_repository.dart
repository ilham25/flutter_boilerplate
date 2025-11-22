
import 'package:dartz/dartz.dart';
import 'package:flutter_boilerplate/core/networks/error_handler.dart';
import 'package:flutter_boilerplate/domain/entities/user/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, List<UserEntity>>> getUsers({Map<String, dynamic>? params});
}