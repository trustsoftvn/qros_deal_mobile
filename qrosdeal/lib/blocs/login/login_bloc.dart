import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:qrosdeal/blocs/login/login_event.dart';
import 'package:qrosdeal/blocs/login/login_state.dart';
import 'package:qrosdeal/constants/constants.dart';
import 'package:qrosdeal/core/base_bloc.dart';
import 'package:qrosdeal/models/user/user.dart';
import 'package:qrosdeal/repositories/account_repository.dart';
import 'package:qrosdeal/repositories/app_data_repository.dart';
import 'package:qrosdeal/utils/auth_utils.dart';

class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  final AccountRepository _accountRepository = AccountRepository();

  LoginBloc() : super(const LoginState()) {
    on<EmailInputChanged>(_onEmailInputChanged);
    on<PasswordInputChanged>(_onPasswordInputChanged);
    on<LoginButtonPressed>(_onLoginButtonPressed);
    on<PinCodeInputChange>(_onPinInputChange);
    on<PinLoginButtonPressed>(_onPinLoginButtonPressed);
  }

  void _onPinInputChange(PinCodeInputChange event, emit) {
    final isLoginButtonDisabled = event.pinCode.length < 6;

    emit(state.copyWith(
        pinCode: event.pinCode, isLoginButtonDisabled: isLoginButtonDisabled));
  }

  void _onEmailInputChanged(EmailInputChanged event, emit) {
    final isLoginButtonDisabled = event.email.isEmpty && state.password.isEmpty;
    emit(state.copyWith(
        email: event.email, isLoginButtonDisabled: isLoginButtonDisabled));
  }

  void _onPasswordInputChanged(PasswordInputChanged event, emit) {
    final isLoginButtonDisabled = event.password.isEmpty && state.email.isEmpty;
    emit(state.copyWith(
        password: event.password,
        isLoginButtonDisabled: isLoginButtonDisabled));
  }

  void _onLoginButtonPressed(LoginButtonPressed event, emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      // Get access token
      final accessToken =
          await _accountRepository.login(state.email, state.password, false);
      final appDataRepository = GetIt.instance.get<AppDataRepository>();
      await appDataRepository.saveAccessToken(accessToken);
      await appDataRepository.loadData();

      // Get user info
      final userResponse = await _accountRepository.getUserInfo();
      final data = userResponse['data'];
      final user = User(
          email: data['email'],
          fullName: data['full_name'],
          userRef: data['reference'],
          lastLogin: data['last_login']);
      await appDataRepository.saveUser(user);
      await appDataRepository.loadData();

      emit(state.copyWith(isSuccess: true, isLoading: false));
    } catch (error) {
      emit(state.copyWith(isLoading: false));
      handleExeption(error);
    }
  }

  void _onPinLoginButtonPressed(PinLoginButtonPressed event, emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final appDataRepository = GetIt.instance.get<AppDataRepository>();
      final user = appDataRepository.user;

      final jwtToken = AuthUtils.generateJWTToken(
          user!.userRef, ClientAuthenticationType.pinCode, state.pinCode);

      await _accountRepository.getConfirmationToken(AppService.topUp, jwtToken);

      emit(state.copyWith(isSuccess: true, isLoading: false));
    } catch (error) {
      emit(state.copyWith(isLoading: false));
      handleExeption(error);
    }
  }
}
