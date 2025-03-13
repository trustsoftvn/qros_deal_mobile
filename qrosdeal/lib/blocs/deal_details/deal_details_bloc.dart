import 'package:qrosdeal/blocs/deal_details/deal_details_event.dart';
import 'package:qrosdeal/blocs/deal_details/deal_details_state.dart';
import 'package:qrosdeal/core/base_bloc.dart';
import 'package:qrosdeal/repositories/store_repository.dart';

class DealDetailsBloc extends BaseBloc<DealDetailsEvent, DealDetailsState> {
  final StoreRepository _storeRepository = StoreRepository();

  DealDetailsBloc() : super(const DealDetailsState()) {
    on<InitData>(_onInitData);
    on<NameInputChanged>(_onNameInputChanged);
    on<PhoneInputChanged>(_onPhoneInputChanged);
    on<AddressChanged>(_onAddressChanged);
    on<ChooseStoreImage>(_onChooseStoreImage);
    on<CreateButtonPressed>(_onCreateButtonPressed);
  }

  void _onInitData(InitData event, emit) {}

  void _onNameInputChanged(NameInputChanged event, emit) {}

  void _onPhoneInputChanged(PhoneInputChanged event, emit) {}

  void _onAddressChanged(AddressChanged event, emit) {}

  void _onChooseStoreImage(ChooseStoreImage event, emit) async {}

  void _onCreateButtonPressed(CreateButtonPressed event, emit) async {}
}
