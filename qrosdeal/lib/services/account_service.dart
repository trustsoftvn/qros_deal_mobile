import 'package:dio/dio.dart';
import 'package:qrosdeal/services/api_path.dart';
import 'package:qrosdeal/services/rest_api_service.dart';

class AccountService extends RestApiService {
  Future<Response> login(String email, String password, bool? isRegister) async {
    Map<String, dynamic> data = {
      'email': email,
      'password': password,
      'grant_type': 'access_token',
      'is_register': isRegister,
    };

    return await post(ApiPath.login, data: data);
  }

  Future<Response> signUpVerifyEmail(String email, bool isResend) async {
    final Map<String, dynamic> data = {"email": email};

    if (isResend == true) {
      data.addAll({'is_resend': true});
    }

    return await post(ApiPath.verifyEmail, data: data);
  }

  Future<Response> signUpVerifyOtp(email, otp, reference) async {
    return await post(
      ApiPath.verifyOtp,
      data: {
        "email": email,
        "otp": otp,
        "reference": reference,
      },
    );
  }

  Future<Response> signUpCreatePassword(email, password, reference) async {
    final response = await post(
      ApiPath.verifyPassword,
      data: {
        "email": email,
        "password": password,
        "reference": reference,
      },
    );
    return response;
  }

  Future<Response> signUpCreatePinCode(email, pincode, reference) async {
    final response = await post(
      ApiPath.verifyPinCode,
      data: {
        "email": email,
        "pincode": pincode,
        "reference": reference,
      },
    );

    return response;
  }

  Future<Response> updateUserInformation(
    String fullName,
    String countryCode,
    String dialingCode,
    String phoneNumber,
    String reference,
  ) async {
    final response = await put(
      ApiPath.updateInformation,
      data: {
        "fullname": fullName,
        "country_code": countryCode,
        "dialing_code": dialingCode,
        "phone_number": phoneNumber,
        "reference": reference
      },
    );

    return response;
  }
}
