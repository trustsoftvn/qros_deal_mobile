import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/core/base_bloc_state.dart';
import 'package:qrosdeal/models/deal_dto/deal_dto.dart';

part 'deals_state.freezed.dart';

@freezed
class DealsState extends BaseBlocState with _$DealsState {
  const factory DealsState({
    @Default(false) bool isLoading,
    @Default([]) List<DealDto> deals,
  }) = _DealsState;
}
