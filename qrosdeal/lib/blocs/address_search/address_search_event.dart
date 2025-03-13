import 'package:qrosdeal/core/base_bloc_event.dart';

abstract class AddressSearchEvent extends BaseBlocEvent {}

class AddressSearchInputEvent extends AddressSearchEvent {
  final String text;

  AddressSearchInputEvent(this.text);
}
