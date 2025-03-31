import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/core/base_bloc_state.dart';

part 'deal_details_state.freezed.dart';

@freezed
class DealDetailsState extends BaseBlocState with _$DealDetailsState {
  const factory DealDetailsState({
    @Default(null) int? id,
    @Default("") String name,
    @Default("") String description,
    @Default(1) int type,
    @Default("") String currency,
    @Default("") String condition,
    @Default("") String image,
    @Default("") String discountPercent,
    @Default("") String maxDiscount,
    @Default("") String quantity,
    @Default(null) DateTime? startDate,
    @Default(null) DateTime? endDate,
    @Default([]) List<int> storeIds,
  }) = _DealDetailsState;
}
