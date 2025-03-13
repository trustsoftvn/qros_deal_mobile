import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/core/base_bloc_state.dart';

part 'common_state.freezed.dart';

@freezed
class CommonState extends BaseBlocState with _$CommonState {
  const factory CommonState({
    @Default(null) Type? blocType,
    @Default("") String errorMessage,
    @Default("") String createdAt,
  }) = _CommonState;
}
