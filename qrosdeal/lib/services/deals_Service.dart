import 'package:dio/dio.dart';
import 'package:mime/mime.dart';
import 'package:qrosdeal/models/deal_dto/deal_dto.dart';
import 'package:qrosdeal/services/api_path.dart';
import 'package:qrosdeal/services/rest_api_service.dart';

class DealsService extends RestApiService {
  Future<Response> getDealList(int page) async {
    return await post(ApiPath.dealList, data: {"page": page});
  }
}
