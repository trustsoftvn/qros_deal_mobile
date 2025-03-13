import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/core/base_bloc_state.dart';

part 'register_verify_email_state.freezed.dart';

@freezed
class RegisterVerifyEmailState extends BaseBlocState with _$RegisterVerifyEmailState {
  const factory RegisterVerifyEmailState({
    @Default("") String email,
    @Default("") String otp,
    @Default("") String reference,
    @Default(false) bool isEnableVerifyButton,
    @Default(0) int remainingTime,
    @Default(false) bool isSuccess,
  }) = _RegisterVerifyEmailState;
}
