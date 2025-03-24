import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthUtils {
  static generateJWTToken(String userRef, String authType, String authValue) {
    final jwt = JWT({
      'user_reference': userRef,
      'auth_type': authType,
      'auth_value': authValue
    });

    return jwt.sign(SecretKey(dotenv.env['SECRET_KEY'] as String),
        expiresIn: const Duration(seconds: 900));
  }
}
