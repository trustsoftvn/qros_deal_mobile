import 'package:qrosdeal/core/base_bloc_event.dart';
import 'package:qrosdeal/models/store_dto/store_dto.dart';

abstract class DealDetailsEvent extends BaseBlocEvent {}

class InitData extends DealDetailsEvent {
  final StoreDto? store;

  InitData(this.store);
}

class ChooseStoreImage extends DealDetailsEvent {
  final String imagePath;

  ChooseStoreImage(this.imagePath);
}

class NameInputChanged extends DealDetailsEvent {
  final String name;

  NameInputChanged(this.name);
}

class PhoneInputChanged extends DealDetailsEvent {
  final String phoneNumber;

  PhoneInputChanged(this.phoneNumber);
}

class AddressChanged extends DealDetailsEvent {
  final String address;
  final double latitude;
  final double longitude;

  AddressChanged(this.address, this.latitude, this.longitude);
}

class CreateButtonPressed extends DealDetailsEvent {}
