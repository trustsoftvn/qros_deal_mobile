import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:qrosdeal/blocs/common/common_bloc.dart';
import 'package:qrosdeal/blocs/common/common_event.dart';
import 'package:qrosdeal/core/base_bloc_event.dart';
import 'package:qrosdeal/core/base_bloc_state.dart';

abstract class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState> extends Bloc<E, S> {
  BaseBloc(super.initialState);

  void handleExeption(Object exception) {
    GetIt.instance.get<CommonBloc>().add(ThrowExceptionEvent(exception, runtimeType));
  }
}
