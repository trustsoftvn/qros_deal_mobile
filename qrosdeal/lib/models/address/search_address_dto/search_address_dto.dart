import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/models/address/address_search_result/address_search_result.dart';

part 'search_address_dto.freezed.dart';
part 'search_address_dto.g.dart';

@freezed
class SearchAddressDTO with _$SearchAddressDTO {
  const factory SearchAddressDTO({
    @Default([]) List<AddressSearchResult> items,
  }) = _SearchAddressDTO;

  factory SearchAddressDTO.fromJson(Map<String, dynamic> json) => _$SearchAddressDTOFromJson(json);
}
