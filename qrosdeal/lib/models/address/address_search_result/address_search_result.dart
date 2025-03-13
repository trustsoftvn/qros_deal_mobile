import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/models/address/address/address.dart';
import 'package:qrosdeal/models/address/position/position.dart';

part 'address_search_result.freezed.dart';
part 'address_search_result.g.dart';

@freezed
class AddressSearchResult with _$AddressSearchResult {
  const factory AddressSearchResult({
    @Default("") String title,
    @Default("") String id,
    @Default(Address()) Address address,
    @Default(Position()) Position position,
  }) = _AddressSearchResult;

  factory AddressSearchResult.fromJson(Map<String, dynamic> json) =>
      _$AddressSearchResultFromJson(json);
}
