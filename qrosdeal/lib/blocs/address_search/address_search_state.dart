import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/core/base_bloc_state.dart';
import 'package:qrosdeal/models/address/address_search_result/address_search_result.dart';

part 'address_search_state.freezed.dart';

@freezed
class AddressSearchState extends BaseBlocState with _$AddressSearchState {
  const factory AddressSearchState({
    @Default("") String textSearch,
    @Default(false) bool isLoading,
    @Default([]) List<AddressSearchResult> items,
  }) = _AddressSearchState;
}
