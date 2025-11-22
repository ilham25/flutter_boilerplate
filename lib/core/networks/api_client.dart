import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_boilerplate/injection/injector.dart';
import 'package:flutter_boilerplate/infrastructure/datasource/auth/auth_local_datasource.dart';
import 'package:flutter_boilerplate/utils/flavor/flavor_utils.dart';

class ApiClient {
  final Dio _dio = Dio();

  ApiClient() {
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(minutes: 5);
    _dio.options.headers['Accept'] = 'application/json';
    _dio.options.headers['Content-Type'] = 'application/json';
    _dio.options.headers['Platform'] = 'Mobile';
    _dio.options.validateStatus = (status) => status! < 500;

    _dio.interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) async {
          if (response.statusCode == 401 && !response.requestOptions.path.contains('login')) {
            unAuthorized();
          }
          return handler.next(response);
        },
        onError: (DioException e, handler) async {
          if (e.response?.statusCode == 401 && !e.requestOptions.path.contains('login')) {
            unAuthorized();
          }
          return handler.next(e);
        },
      ),
    );

    _dio.interceptors.add(
      RetryInterceptor(
        dio: _dio,
        retries: 3, // retry count (optional)
        retryDelays: const [
          // set delays between retries (optional)
          Duration(seconds: 1), // wait 1 sec before first retry
          Duration(seconds: 2), // wait 2 sec before second retry
          Duration(seconds: 3), // wait 3 sec before third retry
        ],
      ),
    );
  }

  void unAuthorized() async {
    final authLocal = inject<AuthLocalDataSource>();
    authLocal.removeAuth();
    await Future.delayed(const Duration(milliseconds: 500));
    // inject<AppRouter>().pushAndPopUntil(const LoginRoute(), predicate: (route) => true);
  }

  void setBearerToken(String? token) {
    if (token == null) return;
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  /// Get backend domain and main domain from
  /// shared preferences and set it to header
  Future<void> setupHostHeader() async {
    final accessToken = await inject<AuthLocalDataSource>().getAuth();
    _dio.options.baseUrl = flavor.current.api.baseURL;
    setBearerToken(accessToken);
  }

  Future<Response<T>> get<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        void Function(int, int)? onReceiveProgress,
      }) async {
    await setupHostHeader();
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> post<T>(
      String path, {
        dynamic data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        void Function(int, int)? onSendProgress,
        void Function(int, int)? onReceiveProgress,
      }) async {
    await setupHostHeader();
    return _dio.post<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> put<T>(
      String path, {
        dynamic data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        void Function(int, int)? onSendProgress,
        void Function(int, int)? onReceiveProgress,
      }) async {
    await setupHostHeader();
    return _dio.put<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> delete<T>(
      String path, {
        dynamic data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
      }) async {
    await setupHostHeader();
    return _dio.delete<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }
}