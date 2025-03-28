import 'package:qrosdeal/core/base_bloc_event.dart';
import 'package:qrosdeal/models/deal_dto/deal_dto.dart';

abstract class DealDetailsEvent extends BaseBlocEvent {}

class InitData extends DealDetailsEvent {
  final DealDto? dealDto;

  InitData(this.dealDto);
}

class ChooseStoreImage extends DealDetailsEvent {
  final String imagePath;

  ChooseStoreImage(this.imagePath);
}

class NameInputChanged extends DealDetailsEvent {
  final String name;

  NameInputChanged(this.name);
}

class TypeInputChange extends DealDetailsEvent {
  final int type;

  TypeInputChange(this.type);
}

class DescriptionInputChange extends DealDetailsEvent {
  final String description;

  DescriptionInputChange(this.description);
}

class ConditionInputChange extends DealDetailsEvent {
  final String condition;

  ConditionInputChange(this.condition);
}

class ImageChange extends DealDetailsEvent {
  final String imagePath;

  ImageChange(this.imagePath);
}

class CurrencyInputChange extends DealDetailsEvent {
  final String currency;

  CurrencyInputChange(this.currency);
}

class DiscountPercentInputChange extends DealDetailsEvent {
  final double discountPercent;

  DiscountPercentInputChange(this.discountPercent);
}

class MaxDiscountInputChange extends DealDetailsEvent {
  final double maxDiscount;

  MaxDiscountInputChange(this.maxDiscount);
}

class QuantityInputChange extends DealDetailsEvent {
  final int quantity;

  QuantityInputChange(this.quantity);
}

class CreateButtonPressed extends DealDetailsEvent {}
