import 'package:qrosdeal/blocs/store/store_event.dart';
import 'package:qrosdeal/blocs/store/store_state.dart';
import 'package:qrosdeal/core/base_bloc.dart';
import 'package:qrosdeal/repositories/store_repository.dart';

class StoreBloc extends BaseBloc<StoreEvent, StoreState> {
  final StoreRepository _storeRepository = StoreRepository();

  StoreBloc() : super(const StoreState()) {
    fetchStoreList();
  }

  Future<void> fetchStoreList() async {
    try {
      final stores = await _storeRepository.fetchStoreList();

      emit(state.copyWith(stores: stores));
    } catch (error) {
      handleExeption(error);
    }
  }
}
