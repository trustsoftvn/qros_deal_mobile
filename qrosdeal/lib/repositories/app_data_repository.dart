import 'package:qrosdeal/models/user/user.dart';
import 'package:qrosdeal/repositories/local_data_repository.dart';

class AppDataRepository {
  final _localDataRepository = LocalDataRepository();

  String? accessToken = "";
  User? user;
  String email = "";

  Future<void> loadData() async {
    accessToken = await _localDataRepository.getAccessToken();
    user = await _localDataRepository.getUser();
  }

  Future<void> clearData() async {
    await _localDataRepository.removeAccessTokenAndUser();
    accessToken = "";
    user = null;
    email = "";
  }

  Future<void> saveAccessToken(String accessToken) async {
    accessToken = accessToken;
    await _localDataRepository.saveAccessToken(accessToken);
  }

  Future<void> saveUser(User user) async {
    await _localDataRepository.saveUser(user);
  }
}
