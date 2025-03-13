import 'package:qrosdeal/core/base_bloc_event.dart';

abstract class RegisterUserInfoEvent extends BaseBlocEvent {}

class InitData extends RegisterUserInfoEvent {
  final String reference;
  final String? email;
  final String? password;

  InitData({required this.reference, this.email, this.password});
}

class FullNameInputChanged extends RegisterUserInfoEvent {
  final String name;

  FullNameInputChanged(this.name);
}

class PhoneInputChanged extends RegisterUserInfoEvent {
  final String phone;

  PhoneInputChanged(this.phone);
}

class CountrySelected extends RegisterUserInfoEvent {}

class DialingCodeSelected extends RegisterUserInfoEvent {}

class ConfirmButtonPressed extends RegisterUserInfoEvent {}
