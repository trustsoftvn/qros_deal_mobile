import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:qrosdeal/common/exception/api_exception.dart';
import 'package:qrosdeal/constants/dio_configs.dart';
import 'package:qrosdeal/services/dio_interceptor.dart';

class RestApiService {
  final String baseUrl;
  final int connectTimeoutInMs;
  final int sendTimeoutInMs;
  final int receiveTimeoutInMs;
  final List<Interceptor>? interceptors;
  final Dio _dio;

  RestApiService({
    this.baseUrl = '',
    this.interceptors,
    this.connectTimeoutInMs = DioConfigs.connectTimeoutInMs,
    this.sendTimeoutInMs = DioConfigs.sendTimeoutInMs,
    this.receiveTimeoutInMs = DioConfigs.receiveTimeoutInMs,
  }) : _dio = Dio(
          BaseOptions(
            connectTimeout: Duration(milliseconds: connectTimeoutInMs),
            receiveTimeout: Duration(milliseconds: sendTimeoutInMs),
            sendTimeout: Duration(milliseconds: receiveTimeoutInMs),
            baseUrl: baseUrl.isNotEmpty ? baseUrl : dotenv.env['API_URL'] as String,
          ),
        ) {
    if (interceptors == null) {
      _dio.interceptors.addAll([
        if (!kReleaseMode) LogInterceptor(requestBody: true, responseBody: true),
        DioInterceptor()
      ]);
    } else {
      _dio.interceptors.addAll(interceptors!);
    }
  }

  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (error) {
      _handleDioError(error);
    }
  }

  Future post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (error) {
      _handleDioError(error);
    }
  }

  Future put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (error) {
      _handleDioError(error);
    }
  }

  void _handleDioError(dynamic error) {
    if (error is DioException) {
      if (error.error != null && error.error is AppException) {
        throw error.error!;
      } else {
        throw AppException(
          errorCode: error.response?.data?['status']?['code']?.toString(),
          message: error.response?.data?['status']?['message'] ??
              'Something went wrong. Please try again',
        );
      }
    }
    throw AppException(
      errorCode: 'unknown',
      message: 'error',
    );
  }
}
