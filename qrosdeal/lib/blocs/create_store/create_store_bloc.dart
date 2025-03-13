import 'package:qrosdeal/blocs/create_store/create_store_event.dart';
import 'package:qrosdeal/blocs/create_store/create_store_state.dart';
import 'package:qrosdeal/core/base_bloc.dart';
import 'package:qrosdeal/repositories/store_repository.dart';

class CreateStoreBloc extends BaseBloc<CreateStoreEvent, CreateStoreState> {
  final StoreRepository _storeRepository = StoreRepository();

  CreateStoreBloc() : super(const CreateStoreState()) {
    on<InitData>(_onInitData);
    on<NameInputChanged>(_onNameInputChanged);
    on<PhoneInputChanged>(_onPhoneInputChanged);
    on<AddressChanged>(_onAddressChanged);
    on<ChooseStoreImage>(_onChooseStoreImage);
    on<CreateButtonPressed>(_onCreateButtonPressed);
  }

  void _onInitData(InitData event, emit) {
    if (event.store != null) {
      emit(state.copyWith(
        id: event.store!.id,
        name: event.store!.name,
        phoneNumber: event.store!.phoneNumber,
        address: event.store!.address,
        imageURL: event.store!.logo,
      ));
    }
  }

  void _onNameInputChanged(NameInputChanged event, emit) {
    emit(state.copyWith(name: event.name));
  }

  void _onPhoneInputChanged(PhoneInputChanged event, emit) {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  void _onAddressChanged(AddressChanged event, emit) {
    emit(
      state.copyWith(
        address: event.address,
        latitude: event.latitude,
        longitude: event.longitude,
      ),
    );
  }

  void _onChooseStoreImage(ChooseStoreImage event, emit) async {
    final res = await _storeRepository.uploadStoreImage(event.imagePath);
    emit(
      state.copyWith(
        imageURL: res.url,
      ),
    );
  }

  void _onCreateButtonPressed(CreateButtonPressed event, emit) async {
    try {
      if (state.id != null) {
        await _storeRepository.updateStore(
          id: state.id!,
          name: state.name,
          address: state.address,
          latitude: state.latitude,
          longitude: state.longitude,
          phoneNumber: state.phoneNumber,
          logo: state.imageURL,
        );

        emit(state.copyWith(isSuccess: true));
      } else {
        await _storeRepository.createStore(
          name: state.name,
          address: state.address,
          latitude: state.latitude,
          longitude: state.longitude,
          phoneNumber: state.phoneNumber,
          logo: state.imageURL,
        );

        emit(state.copyWith(isSuccess: true));
      }
    } catch (err) {
      handleExeption(err);
    }
  }
}
