import 'dart:async';

import 'package:qrosdeal/blocs/register_verify_email/register_verify_email_event.dart';
import 'package:qrosdeal/blocs/register_verify_email/register_verify_email_state.dart';
import 'package:qrosdeal/core/base_bloc.dart';
import 'package:qrosdeal/repositories/account_repository.dart';

class RegisterVerifyEmailBloc extends BaseBloc<RegisterVerifyEmailEvent, RegisterVerifyEmailState> {
  final AccountRepository _accountRepository = AccountRepository();
  Timer? _timer;

  RegisterVerifyEmailBloc({
    required String email,
    required String reference,
  }) : super(RegisterVerifyEmailState(
          email: email,
          reference: reference,
        )) {
    on<InitData>(_onInitData);
    on<StartCountdown>(_onStartCountdown);
    on<RemainingTimeChanged>(_onRemainingTimeChanged);
    on<OtpInputChanged>(_onOtpInputChanged);
    on<ConfirmButtonPressed>(_onConfirmButtonPressed);
    on<ResendButtonPressed>(_onResendButtonPressed);
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  void _onInitData(InitData event, emit) {
    emit(state.copyWith(email: event.email, reference: event.reference));
  }

  void _onRemainingTimeChanged(RemainingTimeChanged event, emit) {
    emit(state.copyWith(remainingTime: event.remainingTime));
  }

  void _onStartCountdown(StartCountdown event, emit) {
    _timer?.cancel(); // Cancel any existing timer
    emit(state.copyWith(remainingTime: 20));

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final newTime = 20 - timer.tick;

      add(RemainingTimeChanged(newTime));

      if (newTime <= 0) {
        timer.cancel();
      }
    });
  }

  void _onOtpInputChanged(OtpInputChanged event, emit) {
    emit(state.copyWith(otp: event.otp, isEnableVerifyButton: event.otp.length == 6));
  }

  void _onConfirmButtonPressed(ConfirmButtonPressed event, emit) async {
    try {
      await _accountRepository.signUpVerifyOtp(state.email, state.otp, state.reference);
      emit(state.copyWith(isSuccess: true));
    } catch (error) {
      print(error);
    }
  }

  void _onResendButtonPressed(ResendButtonPressed event, emit) async {
    try {
      add(StartCountdown());
      await _accountRepository.signUpVerifyEmail(state.email, true);
    } catch (error) {
      // if (error is String) {
      //   throw AppUncaughtException(error);
      // }
    }
  }
}
