import 'package:qrosdeal/blocs/address_search/address_search_event.dart';
import 'package:qrosdeal/blocs/address_search/address_search_state.dart';
import 'package:qrosdeal/core/base_bloc.dart';
import 'package:qrosdeal/repositories/map_repository.dart';

class AddressSearchBloc extends BaseBloc<AddressSearchEvent, AddressSearchState> {
  final MapRepository _mapRepository = MapRepository();

  AddressSearchBloc() : super(const AddressSearchState()) {
    on<AddressSearchInputEvent>(_onAddressSearchInputEvent);
  }

  void _onAddressSearchInputEvent(AddressSearchInputEvent event, emit) async {
    emit(state.copyWith(textSearch: event.text));
    if (event.text.isEmpty) {
      emit(state.copyWith(items: []));
      return;
    }
    final data = await _mapRepository.autoSuggestAddress(event.text);
    emit(state.copyWith(items: data.items));
  }
}
