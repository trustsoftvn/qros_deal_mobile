import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/core/base_bloc_state.dart';
import 'package:qrosdeal/models/store_dto/store_dto.dart';

part 'create_store_state.freezed.dart';

@freezed
class CreateStoreState extends BaseBlocState with _$CreateStoreState {
  const factory CreateStoreState({
    @Default(null) int? id,
    @Default("") String name,
    @Default("") String address,
    @Default(0) double latitude,
    @Default(0) double longitude,
    @Default("") String phoneNumber,
    @Default("") String imageURL,
    @Default(false) bool isSuccess,
    @Default(true) bool isButtonDisabled,
    @Default(null) StoreDto? originalStore,
  }) = _CreateStoreState;
}
