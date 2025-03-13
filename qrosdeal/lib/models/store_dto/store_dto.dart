import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_dto.freezed.dart';
part 'store_dto.g.dart';

@freezed
class StoreDto with _$StoreDto {
  const factory StoreDto({
    @Default("") String name,
    @Default("") String phoneNumber,
    @Default("") String address,
    @Default("") String latitude,
    @Default("") String longitude,
    @Default("") String logo,
    @Default(0) int userId,
    @Default(0) int id,
  }) = _StoreDto;

  factory StoreDto.fromJson(Map<String, dynamic> json) => _$StoreDtoFromJson(json);
}
