import 'package:qrosdeal/blocs/deals/deals_event.dart';
import 'package:qrosdeal/blocs/deals/deals_state.dart';
import 'package:qrosdeal/core/base_bloc.dart';
import 'package:qrosdeal/repositories/deals_repository.dart';

class DealsBloc extends BaseBloc<DealsEvent, DealsState> {
  final DealsRepository _dealsRepositiory = DealsRepository();

  DealsBloc() : super(const DealsState()) {
    fetchDealsList();
    on<RefetchDeals>(_refetchDeals);
  }

  Future<void> _refetchDeals(event, emit) async {
    await fetchDealsList();
  }

  Future<void> fetchDealsList() async {
    try {
      final deals = await _dealsRepositiory.fetchDealList(1);
      emit(state.copyWith(deals: deals));
    } catch (error) {
      handleExeption(error);
    }
  }
}
