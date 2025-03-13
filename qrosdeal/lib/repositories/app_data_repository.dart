import 'package:qrosdeal/repositories/local_data_repository.dart';

class AppDataRepository {
  final _localDataRepository = LocalDataRepository();

  String? accessToken = "";

  Future<void> loadData() async {
    accessToken = await _localDataRepository.getAccessToken();
  }

  Future<void> saveAccessToken(String accessToken) async {
    accessToken = accessToken;
    await _localDataRepository.saveAccessToken(accessToken);
  }
}
