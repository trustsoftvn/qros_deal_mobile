import 'package:qrosdeal/blocs/deal_details/deal_details_event.dart';
import 'package:qrosdeal/blocs/deal_details/deal_details_state.dart';
import 'package:qrosdeal/core/base_bloc.dart';
import 'package:qrosdeal/repositories/deals_repository.dart';

class DealDetailsBloc extends BaseBloc<DealDetailsEvent, DealDetailsState> {
  final DealsRepository _dealRepository = DealsRepository();

  DealDetailsBloc() : super(const DealDetailsState()) {
    on<InitData>(_onInitData);
    on<NameInputChanged>(_onNameInputChanged);
    on<TypeInputChange>(_onTypeInputChanged);
    on<DescriptionInputChange>(_onDescriptionChanged);
    on<ImageChange>(_onImageChanged);
    on<ConditionInputChange>(_onConditionChanged);
    on<CurrencyInputChange>(_onCurrencyChanged);
    on<DiscountPercentInputChange>(_onDiscountPercentChanged);
    on<MaxDiscountInputChange>(_onMaxDiscountChanged);
    on<QuantityInputChange>(_onQuantityChanged);
    on<CreateButtonPressed>(_onCreateButtonPressed);
    on<DateChange>(_onDateChange);
  }

  void _onInitData(InitData event, emit) {
    if (event.dealDto == null) {
      return;
    }

    emit(state.copyWith(
        id: event.dealDto!.id,
        name: event.dealDto!.name,
        type: event.dealDto!.type,
        description: event.dealDto!.description,
        condition: event.dealDto!.condition,
        image: event.dealDto!.image,
        currency: event.dealDto!.currency,
        discountPercent: event.dealDto!.discountPercent.toString(),
        maxDiscount: event.dealDto!.maxDiscount.toString(),
        quantity: event.dealDto!.quantity.toString(),
        startDate: event.dealDto!.startDate,
        endDate: event.dealDto!.endDate));
  }

  void _onNameInputChanged(NameInputChanged event, emit) {
    emit(state.copyWith(name: event.name));
  }

  void _onTypeInputChanged(TypeInputChange event, emit) {
    emit(state.copyWith(type: event.type));
  }

  void _onDescriptionChanged(DescriptionInputChange event, emit) {
    emit(state.copyWith(description: event.description));
  }

  void _onConditionChanged(ConditionInputChange event, emit) {
    emit(state.copyWith(condition: event.condition));
  }

  void _onCurrencyChanged(CurrencyInputChange event, emit) {
    emit(state.copyWith(currency: event.currency));
  }

  void _onDiscountPercentChanged(DiscountPercentInputChange event, emit) {
    emit(state.copyWith(discountPercent: event.discountPercent));
  }

  void _onMaxDiscountChanged(MaxDiscountInputChange event, emit) {
    emit(state.copyWith(maxDiscount: event.maxDiscount));
  }

  void _onQuantityChanged(QuantityInputChange event, emit) {
    emit(state.copyWith(quantity: event.quantity));
  }

  void _onDateChange(DateChange event, emit) {
    emit(state.copyWith(startDate: event.startDate, endDate: event.endDate));
  }

  void _onImageChanged(ImageChange event, emit) async {}

  void _onCreateButtonPressed(CreateButtonPressed event, emit) async {}
}
