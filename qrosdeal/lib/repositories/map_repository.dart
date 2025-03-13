import 'package:qrosdeal/models/address/search_address_dto/search_address_dto.dart';
import 'package:qrosdeal/services/here_map_service.dart';

class MapRepository {
  final HereMapService _hereMapService = HereMapService();

  Future<SearchAddressDTO> autoSuggestAddress(String address) async {
    final res = await _hereMapService.autoSuggestAddress(address);
    return SearchAddressDTO.fromJson(res.data);
  }
}
