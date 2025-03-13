class AppException implements Exception {
  String? errorCode;
  String message;

  AppException({
    this.errorCode,
    this.message = 'Something went wrong. Please try again',
  });
}
