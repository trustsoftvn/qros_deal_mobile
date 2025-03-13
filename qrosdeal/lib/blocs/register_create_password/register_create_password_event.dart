import 'package:qrosdeal/core/base_bloc_event.dart';

abstract class RegisterCreatePasswordEvent extends BaseBlocEvent {}

class InitData extends RegisterCreatePasswordEvent {
  final String email;
  final String reference;

  InitData(this.email, this.reference);
}

class YourPassInputChanged extends RegisterCreatePasswordEvent {
  final String text;

  YourPassInputChanged(this.text);
}

class ConfirmPassInputChanged extends RegisterCreatePasswordEvent {
  final String text;

  ConfirmPassInputChanged(this.text);
}

class ConfirmButtonPressed extends RegisterCreatePasswordEvent {}
