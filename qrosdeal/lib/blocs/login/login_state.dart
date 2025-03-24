import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/core/base_bloc_state.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState extends BaseBlocState with _$LoginState {
  const factory LoginState({
    @Default("") String email,
    @Default("") String password,
    @Default("") String pinCode,
    @Default(true) bool isLoginButtonDisabled,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
  }) = _LoginState;
}
