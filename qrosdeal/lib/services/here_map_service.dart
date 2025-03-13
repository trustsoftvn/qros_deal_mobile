import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:qrosdeal/services/rest_api_service.dart';

class HereMapService extends RestApiService {
  HereMapService() : super(baseUrl: '', interceptors: []);

  final String apiKey = dotenv.env['HERE_MAP_API_KEY']!;

  Future<Response> autoSuggestAddress(String address) async {
    final Map<String, dynamic> query = {
      "q": address,
      "at": "10.762622,105.804817",
      "apiKey": apiKey,
    };

    return await get(
      'https://autosuggest.search.hereapi.com/v1/autosuggest',
      queryParameters: query,
    );
  }
}
