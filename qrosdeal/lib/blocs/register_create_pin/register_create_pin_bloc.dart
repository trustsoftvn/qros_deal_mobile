import 'package:qrosdeal/blocs/register_create_pin/register_create_pin_event.dart';
import 'package:qrosdeal/blocs/register_create_pin/register_create_pin_state.dart';
import 'package:qrosdeal/core/base_bloc.dart';
import 'package:qrosdeal/repositories/account_repository.dart';

class RegisterCreatePinBloc extends BaseBloc<RegisterCreatePinEvent, RegisterCreatePinState> {
  final AccountRepository _accountRepository = AccountRepository();

  RegisterCreatePinBloc({
    required String email,
    required String reference,
  }) : super(RegisterCreatePinState(
          email: email,
          reference: reference,
        )) {
    on<InitData>(_onInitData);
    on<YourPinCodeInputChanged>(_onYourPinCodeInputChanged);
    on<ConfirmPinCodeInputChanged>(_onConfirmPinCodeInputChanged);
    on<ConfirmButtonPressed>(_onConfirmButtonPressed);
  }

  void _onInitData(InitData event, emit) {
    emit(
      state.copyWith(
        reference: event.reference,
        email: event.email,
        masterPassword: event.password,
        canGoBack: event.password.isNotEmpty,
      ),
    );
  }

  void _onYourPinCodeInputChanged(YourPinCodeInputChanged event, emit) {
    final isEnableVerifyButton = event.yourPinCode.length == 6 &&
        state.confirmPinCode.length == 6 &&
        event.yourPinCode == state.confirmPinCode;
    if (event.yourPinCode.length < 6) {
      emit(state.copyWith(
          yourPinCode: event.yourPinCode,
          errorYourPinCode: 'PIN code invalid',
          isEnableVerifyButton: isEnableVerifyButton));
    } else {
      final isCorrectConfirmPinCode = state.confirmPinCode.length == 6 &&
          event.yourPinCode.length == 6 &&
          state.confirmPinCode == event.yourPinCode;
      emit(state.copyWith(
          yourPinCode: event.yourPinCode,
          isEnableVerifyButton: isEnableVerifyButton,
          errorYourPinCode: null,
          errorConfirmPinCode: state.confirmPinCode.length == 6
              ? isCorrectConfirmPinCode
                  ? null
                  : 'PIN wrong'
              : null));
    }
  }

  void _onConfirmPinCodeInputChanged(ConfirmPinCodeInputChanged event, emit) {
    final isEnableVerifyButton = event.confirmPinCode.length == 6 &&
        state.yourPinCode.length == 6 &&
        event.confirmPinCode == state.yourPinCode;
    if (event.confirmPinCode.length < 6) {
      emit(state.copyWith(
          confirmPinCode: event.confirmPinCode,
          errorConfirmPinCode: 'PIN wrong',
          isEnableVerifyButton: isEnableVerifyButton));
    } else if (event.confirmPinCode != state.yourPinCode) {
      emit(state.copyWith(
          confirmPinCode: event.confirmPinCode,
          errorConfirmPinCode: 'PIN wrong',
          isEnableVerifyButton: isEnableVerifyButton));
    } else {
      emit(state.copyWith(
          confirmPinCode: event.confirmPinCode,
          isEnableVerifyButton: isEnableVerifyButton,
          errorConfirmPinCode: null));
    }
  }

  void _onConfirmButtonPressed(ConfirmButtonPressed event, emit) async {
    try {
      await _accountRepository.signUpCreatePinCode(state.email, state.yourPinCode, state.reference);
      emit(state.copyWith(isSuccess: true));
    } catch (error) {
      print(error);
    }
  }
}
