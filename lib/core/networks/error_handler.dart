enum ResponseCode {
  success(200, "Success"),
  created(201, "Created"),
  noContent(204, "No Content"),
  badRequest(400, "Bad Request"),
  unauthorized(401, "Unauthorized"),
  forbidden(403, "Forbidden"),
  notFound(404, "Not Found"),
  internalServerError(500, "Internal Server Error"),

  // Local status codes
  connectTimeout(-1, "Connection Timeout"),
  cancel(-2, "Request Cancelled"),
  receiveTimeout(-3, "Receive Timeout"),
  sendTimeout(-4, "Send Timeout"),
  cacheError(-5, "Cache Error"),
  noInternetError(-6, "No Internet Connection"),
  defaultError(-7, "Unknown Error");

  final int code;
  final String message;

  const ResponseCode(this.code, this.message);

  static ResponseCode fromCode(int statusCode) {
    return ResponseCode.values.firstWhere(
          (e) => e.code == statusCode,
      orElse: () => ResponseCode.defaultError,
    );
  }
}

class Failure {
  final String message;
  final ResponseCode statusCode;
  final List<Map<String, dynamic>>? errors;

  Failure({
    required this.statusCode,
    required this.message,
    this.errors,
  });
}