import 'package:qrosdeal/core/base_bloc_event.dart';

abstract class LoginEvent extends BaseBlocEvent {}

class EmailInputChanged extends LoginEvent {
  final String email;

  EmailInputChanged(this.email);
}

class PasswordInputChanged extends LoginEvent {
  final String password;

  PasswordInputChanged(this.password);
}

class PinCodeInputChange extends LoginEvent {
  final String pinCode;

  PinCodeInputChange(this.pinCode);
}

class LoginButtonPressed extends LoginEvent {
  LoginButtonPressed();
}

class PinLoginButtonPressed extends LoginEvent {
  PinLoginButtonPressed();
}
