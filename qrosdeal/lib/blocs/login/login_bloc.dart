import 'package:get_it/get_it.dart';
import 'package:qrosdeal/blocs/login/login_event.dart';
import 'package:qrosdeal/blocs/login/login_state.dart';
import 'package:qrosdeal/core/base_bloc.dart';
import 'package:qrosdeal/repositories/account_repository.dart';
import 'package:qrosdeal/repositories/app_data_repository.dart';

class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  final AccountRepository _accountRepository = AccountRepository();

  LoginBloc() : super(const LoginState()) {
    on<EmailInputChanged>(_onEmailInputChanged);
    on<PasswordInputChanged>(_onPasswordInputChanged);
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  void _onEmailInputChanged(EmailInputChanged event, emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordInputChanged(PasswordInputChanged event, emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onLoginButtonPressed(LoginButtonPressed event, emit) async {
    try {
      final accessToken = await _accountRepository.login(state.email, state.password, false);
      await GetIt.instance.get<AppDataRepository>().saveAccessToken(accessToken);
      emit(state.copyWith(isSuccess: true));
    } catch (error) {
      handleExeption(error);
    }
  }
}
