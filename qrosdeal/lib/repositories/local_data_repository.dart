import 'dart:convert';

import 'package:qrosdeal/constants/shared_preference_key.dart';
import 'package:qrosdeal/models/user/user.dart';
import 'package:qrosdeal/repositories/models/pref_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDataRepository {
  final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();

  Future<void> saveAccessToken(String accessToken) async {
    return await asyncPrefs.setString(
        SharedPreferenceKey.accessToken, accessToken);
  }

  Future<String?> getAccessToken() async {
    return await asyncPrefs.getString(SharedPreferenceKey.accessToken);
  }

  Future<void> saveUser(User user) async {
    final PrefUser jsonUser = PrefUser(
        email: user.email,
        fullName: user.fullName,
        userRef: user.userRef,
        lastLogin: user.lastLogin);

    final jsonStr = json.encode(jsonUser);
    return await asyncPrefs.setString(SharedPreferenceKey.user, jsonStr);
  }

  Future<User?> getUser() async {
    final jsonStr = await asyncPrefs.getString(SharedPreferenceKey.user);
    if (jsonStr == null || jsonStr.isEmpty) {
      return null;
    }

    final prefUserJson = PrefUser.fromJson(json.decode(jsonStr));
    return User(
        email: prefUserJson.email,
        fullName: prefUserJson.fullName,
        userRef: prefUserJson.userRef,
        lastLogin: prefUserJson.lastLogin);
  }

  Future<void> removeAccessTokenAndUser() async {
    await asyncPrefs.remove(SharedPreferenceKey.accessToken);
    await asyncPrefs.remove(SharedPreferenceKey.user);
  }
}
