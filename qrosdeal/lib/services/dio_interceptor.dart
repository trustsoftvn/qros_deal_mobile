import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:qrosdeal/common/exception/api_exception.dart';
import 'package:qrosdeal/repositories/app_data_repository.dart';

class DioInterceptor extends Interceptor {
  Dio dio = Dio(BaseOptions(baseUrl: dotenv.env['API_URL'] as String));

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      "Content-Type": "application/json",
      'x-client-id': dotenv.env['X_CLIENT_ID'],
    });

    //get access token
    final token = GetIt.instance.get<AppDataRepository>().accessToken;
    if (token != null) {
      options.headers.addAll({
        "Authorization": "Bearer $token",
      });
    }
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data?['status']?['code'] != 200) {
      throw AppException(
        errorCode: response.data?['status']?['code']?.toString(),
        message: response.data?['status']?['message'],
      );
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // Refresh the user's authentication token.
      // await refreshToken();
      // Retry the request.
      try {
        handler.resolve(await _retry(err.requestOptions));
      } on DioException catch (e) {
        // If the request fails again, pass the error to the next interceptor in the chain.
        handler.next(e);
      }
      // Return to prevent the next interceptor in the chain from being executed.
      return;
    }

    // Pass the error to the next interceptor in the chain.
    handler.next(err);
  }

  // Future<Response<dynamic>> refreshToken() async {
  //   var response = await dio.post(APIs.refreshToken,
  //       options: Options(headers: {"Refresh-Token": "refresh-token"}));
  //   // on success response, deserialize the response
  //   if (response.statusCode == 200) {
  //     // LoginRequestResponse requestResponse =
  //     //    LoginRequestResponse.fromJson(response.data);
  //     // UPDATE the STORAGE with new access and refresh-tokens
  //     return response;
  //   }
  // }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    // Create a new `RequestOptions` object with the same method, path, data, and query parameters as the original request.
    final options = Options(
      method: requestOptions.method,
      headers: {
        // "Authorization": "Bearer ${token}",
      },
    );

    // Retry the request with the new `RequestOptions` object.
    return dio.request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }
}
