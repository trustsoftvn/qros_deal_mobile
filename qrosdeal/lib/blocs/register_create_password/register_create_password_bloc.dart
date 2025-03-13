import 'package:qrosdeal/blocs/register_create_password/register_create_password_event.dart';
import 'package:qrosdeal/blocs/register_create_password/register_create_password_state.dart';
import 'package:qrosdeal/core/base_bloc.dart';
import 'package:qrosdeal/repositories/account_repository.dart';

class RegisterCreatePasswordBloc
    extends BaseBloc<RegisterCreatePasswordEvent, RegisterCreatePasswordState> {
  final AccountRepository _accountRepository = AccountRepository();

  RegisterCreatePasswordBloc({
    required String email,
    required String reference,
  }) : super(
          RegisterCreatePasswordState(
            email: email,
            reference: reference,
          ),
        ) {
    on<InitData>(_onInitData);
    on<YourPassInputChanged>(_onYourPassInputChanged);
    on<ConfirmPassInputChanged>(_onConfirmPassInputChanged);
    on<ConfirmButtonPressed>(_onConfirmButtonPressed);
  }

  void _onInitData(InitData event, emit) {
    emit(state.copyWith(email: event.email, reference: event.reference));
  }

  void _onYourPassInputChanged(YourPassInputChanged event, emit) {
    final isCorrect = event.text.contains(RegExp(r"\d")) &&
        event.text.contains(RegExp(r"[A-Z]")) &&
        event.text.length >= 8;
    final isCorrectConfirm =
        event.text.length >= 8 && event.text == state.confirmPass && state.confirmPass.length >= 8;
    emit(
      state.copyWith(
        yourPass: event.text,
        errorYourPass: isCorrect ? null : 'Password empty',
        errorConfirmPass: state.confirmPass.length >= 8
            ? isCorrectConfirm
                ? null
                : 'Password wrong'
            : null,
        isEnableVerifyButton: isCorrect && event.text == state.confirmPass,
      ),
    );
  }

  void _onConfirmPassInputChanged(ConfirmPassInputChanged event, emit) {
    final isCorrect = event.text == state.yourPass;
    emit(
      state.copyWith(
        confirmPass: event.text,
        errorConfirmPass: isCorrect ? null : 'Password confirm wrong.',
        isEnableVerifyButton: isCorrect && state.errorYourPass == null,
      ),
    );
  }

  void _onConfirmButtonPressed(ConfirmButtonPressed event, emit) async {
    try {
      await _accountRepository.signUpCreatePassword(state.email, state.yourPass, state.reference);
      emit(state.copyWith(isSuccess: true));
    } catch (error) {
      print(error);
    }
  }
}
