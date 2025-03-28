import "package:freezed_annotation/freezed_annotation.dart";

part 'deal_dto.freezed.dart';
part 'deal_dto.g.dart';

@freezed
class DealDto with _$DealDto {
  const factory DealDto({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String description,
    @Default(1) int type,
    @Default(0) int quanitity,
    @Default(0) int quantityStatus,
    @Default("") String currency,
    @Default("") String condition,
    @Default("") String image,
    @Default(0) double discountPercent,
    @Default(0) double maxDiscount,
    @Default(null) DateTime? startDate,
    @Default(null) DateTime? endDate,
  }) = _DealDto;

  factory DealDto.fromJson(Map<String, dynamic> json) =>
      _$DealDtoFromJson(json);
}
