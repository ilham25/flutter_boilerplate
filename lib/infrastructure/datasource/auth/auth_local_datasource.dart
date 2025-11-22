
import 'dart:convert';

import 'package:flutter_boilerplate/utils/manager/shared_manager.dart';
import 'package:flutter_boilerplate/domain/entities/auth/auth_entity.dart';

class AuthLocalDataSource {
  Future<void> saveAuth(AuthEntity auth) async {
    final shared = SharedManager<String>();
    await shared.store("auth_data", jsonEncode(auth.toJson()));
    await shared.store("token_flutter_boilerplate", auth.accessToken);
    setSession(true);
  }

  Future<void> setSession(bool value) async {
    final shared = SharedManager<bool>();
    await shared.store("islogin", value);
  }

  Future<String?> getAuth() async {
    final shared =  SharedManager<String>();
    String? token = await shared.read("token_flutter_boilerplate");
    return token;
  }

  Future<bool> getSession() async {
    final shared = SharedManager<bool>();
    bool? isLogin = await shared.read("islogin");
    return isLogin ?? false;
  }

  Future<bool> isAuth() async {
    final shared = SharedManager<bool>();
    bool? isLogin = await shared.read("islogin");
    return isLogin ?? false;
  }

  Future<void> removeAuth() async {
    final shared = SharedManager<String>();
    await shared.delete("auth_data");
    await shared.delete("token");
    setSession(false);
  }

}