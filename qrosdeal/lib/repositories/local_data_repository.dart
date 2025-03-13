import 'package:qrosdeal/constants/shared_preference_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDataRepository {
  final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();

  Future<void> saveAccessToken(String accessToken) async {
    return await asyncPrefs.setString(SharedPreferenceKey.accessToken, accessToken);
  }

  Future<String?> getAccessToken() async {
    return await asyncPrefs.getString(SharedPreferenceKey.accessToken);
  }
}
