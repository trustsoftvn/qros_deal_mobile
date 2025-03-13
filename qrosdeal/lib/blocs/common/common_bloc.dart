import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrosdeal/blocs/common/common_event.dart';
import 'package:qrosdeal/blocs/common/common_state.dart';
import 'package:qrosdeal/common/exception/api_exception.dart';

class CommonBloc extends Bloc<CommonEvent, CommonState> {
  CommonBloc() : super(const CommonState()) {
    on<ThrowExceptionEvent>(_onThrowExceptionEvent);
  }

  void _onThrowExceptionEvent(ThrowExceptionEvent event, emit) {
    if (event.exception is AppException) {
      emit(
        CommonState(
          blocType: event.blocType,
          errorMessage: (event.exception as AppException).message,
          createdAt: DateTime.now().toIso8601String(),
        ),
      );
    } else {
      emit(
        CommonState(
          blocType: event.blocType,
          errorMessage: 'Something went wrong. Please try again.',
          createdAt: DateTime.now().toIso8601String(),
        ),
      );
    }
  }
}
