import 'package:qrosdeal/models/deal_dto/deal_dto.dart';
import 'package:qrosdeal/services/deals_Service.dart';

class DealsRepository {
  final DealsService _dealsService = DealsService();

  Future<List<DealDto>> fetchDealList(int page) async {
    final res = await _dealsService.getDealList(page);
    return (res.data?['data']["items"] as List)
        .map((e) => DealDto.fromJson(e))
        .toList();
  }
}
