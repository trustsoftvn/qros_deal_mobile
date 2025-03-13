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

class LoginButtonPressed extends LoginEvent {
  LoginButtonPressed();
}
