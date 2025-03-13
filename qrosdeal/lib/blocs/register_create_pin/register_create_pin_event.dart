import 'package:qrosdeal/core/base_bloc_event.dart';

abstract class RegisterCreatePinEvent extends BaseBlocEvent {}

class InitData extends RegisterCreatePinEvent {
  final String reference;
  final String email;
  final String password;

  InitData(this.reference, this.email, this.password);
}

class YourPinCodeInputChanged extends RegisterCreatePinEvent {
  final String yourPinCode;

  YourPinCodeInputChanged(this.yourPinCode);
}

class ConfirmPinCodeInputChanged extends RegisterCreatePinEvent {
  final String confirmPinCode;

  ConfirmPinCodeInputChanged(this.confirmPinCode);
}

class ConfirmButtonPressed extends RegisterCreatePinEvent {}
