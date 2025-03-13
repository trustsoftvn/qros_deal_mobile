import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/core/base_bloc_state.dart';

part 'register_create_pin_state.freezed.dart';

@freezed
class RegisterCreatePinState extends BaseBlocState with _$RegisterCreatePinState {
  const factory RegisterCreatePinState({
    @Default("") String email,
    @Default("") String masterPassword,
    @Default("") String yourPinCode,
    @Default("") String confirmPinCode,
    @Default("") String reference,
    @Default(false) bool isEnableVerifyButton,
    @Default(null) String? errorYourPinCode,
    @Default(null) String? errorConfirmPinCode,
    @Default(false) bool canGoBack,
    @Default(false) bool isSuccess,
  }) = _RegisterCreatePinState;
}
