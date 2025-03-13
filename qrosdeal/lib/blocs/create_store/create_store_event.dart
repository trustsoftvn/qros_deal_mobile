import 'package:qrosdeal/core/base_bloc_event.dart';
import 'package:qrosdeal/models/store_dto/store_dto.dart';

abstract class CreateStoreEvent extends BaseBlocEvent {}

class InitData extends CreateStoreEvent {
  final StoreDto? store;

  InitData(this.store);
}

class ChooseStoreImage extends CreateStoreEvent {
  final String imagePath;

  ChooseStoreImage(this.imagePath);
}

class NameInputChanged extends CreateStoreEvent {
  final String name;

  NameInputChanged(this.name);
}

class PhoneInputChanged extends CreateStoreEvent {
  final String phoneNumber;

  PhoneInputChanged(this.phoneNumber);
}

class AddressChanged extends CreateStoreEvent {
  final String address;
  final double latitude;
  final double longitude;

  AddressChanged(this.address, this.latitude, this.longitude);
}

class CreateButtonPressed extends CreateStoreEvent {}
