import 'package:qrosdeal/core/base_bloc_event.dart';

class RegisterVerifyEmailEvent extends BaseBlocEvent {}

class InitData extends RegisterVerifyEmailEvent {
  final String email;
  final String reference;

  InitData(this.email, this.reference);
}

class OtpInputChanged extends RegisterVerifyEmailEvent {
  final String otp;

  OtpInputChanged(this.otp);
}

class StartCountdown extends RegisterVerifyEmailEvent {}

class RemainingTimeChanged extends RegisterVerifyEmailEvent {
  final int remainingTime;

  RemainingTimeChanged(this.remainingTime);
}

class ConfirmButtonPressed extends RegisterVerifyEmailEvent {}

class ResendButtonPressed extends RegisterVerifyEmailEvent {}
