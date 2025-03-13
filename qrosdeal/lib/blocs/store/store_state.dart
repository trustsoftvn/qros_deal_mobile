import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/core/base_bloc_state.dart';
import 'package:qrosdeal/models/store_dto/store_dto.dart';

part 'store_state.freezed.dart';

@freezed
class StoreState extends BaseBlocState with _$StoreState {
  const factory StoreState({
    @Default(false) bool isLoading,
    @Default([]) List<StoreDto> stores,
  }) = _StoreState;
}
