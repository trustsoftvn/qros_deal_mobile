import 'package:freezed_annotation/freezed_annotation.dart';

part 'position.freezed.dart';
part 'position.g.dart';

@freezed
class Position with _$Position {
  const factory Position({
    @Default(0) double lat,
    @Default(0) double lng,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) => _$PositionFromJson(json);
}
