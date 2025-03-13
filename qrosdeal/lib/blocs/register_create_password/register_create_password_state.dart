import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/core/base_bloc_state.dart';

part 'register_create_password_state.freezed.dart';

@freezed
class RegisterCreatePasswordState extends BaseBlocState with _$RegisterCreatePasswordState {
  const factory RegisterCreatePasswordState({
    @Default("") String email,
    @Default("") String yourPass,
    @Default("") String confirmPass,
    @Default("") String reference,
    @Default(null) String? errorYourPass,
    @Default(null) String? errorConfirmPass,
    @Default(false) bool isEnableVerifyButton,
    @Default(false) bool isSuccess,
  }) = _RegisterCreatePasswordState;
}
