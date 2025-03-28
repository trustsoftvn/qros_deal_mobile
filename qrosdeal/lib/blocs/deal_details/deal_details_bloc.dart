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
    on<CreateButtonPressed>(_onCreateButtonPressed);
  }

  void _onInitData(InitData event, emit) {
    if (event.dealDto == null) {
      return;
    }

    emit(state.copyWith(
        name: event.dealDto!.name,
        type: event.dealDto!.type,
        description: event.dealDto!.description));
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

  void _onImageChanged(ImageChange event, emit) async {}

  void _onCreateButtonPressed(CreateButtonPressed event, emit) async {}
}
