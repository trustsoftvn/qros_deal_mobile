import 'package:qrosdeal/models/store_dto/store_dto.dart';
import 'package:qrosdeal/models/upload_file_response/upload_file_response.dart';
import 'package:qrosdeal/services/store_service.dart';

class StoreRepository {
  final StoreService _storeService = StoreService();

  Future<UploadFileResponse> uploadStoreImage(String imagePath) async {
    final res = await _storeService.uploadStoreImage(imagePath);
    return UploadFileResponse.fromJson(res.data['data']);
  }

  Future<StoreDto> createStore({
    required String name,
    required String address,
    required double latitude,
    required double longitude,
    required String phoneNumber,
    required String logo,
  }) async {
    final res = await _storeService.createStore(
      name: name,
      address: address,
      latitude: latitude,
      longitude: longitude,
      phoneNumber: phoneNumber,
      logo: logo,
    );
    return StoreDto.fromJson(res.data['data']);
  }

  Future<List<StoreDto>> fetchStoreList() async {
    final res = await _storeService.getStoreList();
    return (res.data?['data'] as List).map((e) => StoreDto.fromJson(e)).toList();
  }

  Future<StoreDto> updateStore({
    required int id,
    required String name,
    required String address,
    required double latitude,
    required double longitude,
    required String phoneNumber,
    required String logo,
  }) async {
    final res = await _storeService.updateStore(
      id: id,
      name: name,
      address: address,
      latitude: latitude,
      longitude: longitude,
      phoneNumber: phoneNumber,
      logo: logo,
    );
    return StoreDto.fromJson(res.data['data']);
  }
}
