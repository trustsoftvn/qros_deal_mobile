import 'package:qrosdeal/services/account_service.dart';

class AccountRepository {
  final AccountService _accountService = AccountService();

  Future<String> login(String email, String password, bool? isRegister) async {
    final res = await _accountService.login(email, password, isRegister);
    return res.data['data']['access_token'];
  }

  Future<String> signUpVerifyEmail(String email, bool isResend) async {
    final res = await _accountService.signUpVerifyEmail(email, isResend);
    return res.data['data']['reference'];
  }

  Future<bool> signUpVerifyOtp(
      String email, String otp, String reference) async {
    await _accountService.signUpVerifyOtp(email, otp, reference);
    return true;
  }

  Future<bool> signUpCreatePassword(
      String email, String password, String reference) async {
    await _accountService.signUpCreatePassword(email, password, reference);
    return true;
  }

  Future<bool> signUpCreatePinCode(
      String email, String pincode, String reference) async {
    await _accountService.signUpCreatePinCode(email, pincode, reference);
    return true;
  }

  Future<Map<String, dynamic>> getUserInfo() async {
    final response = await _accountService.getUserInfo();
    return response.data;
  }

  Future<String> getConfirmationToken(String action, String jwtToken) async {
    final response =
        await _accountService.getConfirmationToken(action, jwtToken);

    return response.data['data']['confirmation_token'];
  }

  Future<bool> updateUserInformation({
    required String fullName,
    required String isoCountryCode,
    required String dialingCode,
    required String phoneNumber,
    required String reference,
  }) async {
    await _accountService.updateUserInformation(
      fullName,
      isoCountryCode,
      dialingCode,
      phoneNumber,
      reference,
    );
    return true;
  }
}
