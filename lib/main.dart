import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_boilerplate/app.dart';
import 'package:flutter_boilerplate/bootstrap.dart';
import 'package:flutter_boilerplate/injection/injector.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjector();
  /// Setting up date formatting for Indonesia
  await initializeDateFormatting("id", null);
  /// Fixing  CERTIFICATE_VERIFY_FAILED on android 11\1
  HttpOverrides.global = MyHttpOverrides();
  /// Run the app
  bootstrap(
    () => const App(),
  );
}