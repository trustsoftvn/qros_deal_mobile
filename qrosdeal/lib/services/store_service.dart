import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:qrosdeal/services/api_path.dart';
import 'package:qrosdeal/services/rest_api_service.dart';

class StoreService extends RestApiService {
  Future<Response> uploadStoreImage(String imagePath) async {
    final mime = lookupMimeType(imagePath);

    final file = await MultipartFile.fromFile(
      imagePath,
      contentType: MediaType(mime?.split('/')[0] ?? '', mime?.split('/')[1] ?? ''),
    );

    FormData formData = FormData.fromMap({
      'file': file,
      'isPublic': true,
    });

    return await post(
      ApiPath.uploadStoreImage,
      data: formData,
    );
  }

  Future<Response> createStore({
    required String name,
    required String address,
    required double latitude,
    required double longitude,
    required String phoneNumber,
    required String logo,
  }) async {
    Map<String, dynamic> data = {
      'name': name,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
      'phoneNumber': phoneNumber,
      'logo': logo,
    };

    return await post(ApiPath.store, data: data);
  }

  Future<Response> getStoreList() async {
    return await get(ApiPath.storeList);
  }

  Future<Response> updateStore({
    required int id,
    required String name,
    required String address,
    required double latitude,
    required double longitude,
    required String phoneNumber,
    required String logo,
  }) async {
    Map<String, dynamic> data = {
      'name': name,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
      'phoneNumber': phoneNumber,
      'logo': logo,
    };

    return await put('${ApiPath.store}/${id.toString()}', data: data);
  }
}
