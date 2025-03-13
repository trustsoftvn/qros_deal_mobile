import 'package:qrosdeal/blocs/register_user_info/register_user_info_event.dart';
import 'package:qrosdeal/blocs/register_user_info/register_user_info_state.dart';
import 'package:qrosdeal/core/base_bloc.dart';
import 'package:qrosdeal/repositories/account_repository.dart';
import 'package:qrosdeal/utils/validation_utils.dart';

class RegisterUserInfoBloc extends BaseBloc<RegisterUserInfoEvent, RegisterUserInfoState> {
  final AccountRepository _accountRepository = AccountRepository();

  // List<CountryMobileData> _listCountry = [];

  RegisterUserInfoBloc({required String reference})
      : super(
          RegisterUserInfoState(
            reference: reference,
          ),
        ) {
    on<InitData>(_onInitData);
    on<FullNameInputChanged>(_onFullNameInputChanged);
    on<PhoneInputChanged>(_onPhoneInputChanged);
    on<CountrySelected>(_onCountrySelected);
    on<DialingCodeSelected>(_onDialingCode);
    on<ConfirmButtonPressed>(_onConfirmButtonPressed);
  }

  void _onInitData(InitData event, emit) {
    emit(state.copyWith(
        reference: event.reference,
        email: event.email ?? "",
        masterPass: event.password ?? "",
        canGoBack: event.password != null && event.password!.isNotEmpty));
  }

  void _onFullNameInputChanged(FullNameInputChanged event, emit) {
    final isPhoneValid = ValidationUtils.isValidPhoneNumber(state.phoneNumber);

    final isEnableVerifyButton =
        event.name.isNotEmpty && state.countryMobile != null && isPhoneValid;

    emit(state.copyWith(
      fullName: event.name,
      errorFullName: event.name.isEmpty ? "Full name empty" : null,
      isEnableVerifyButton: isEnableVerifyButton,
    ));
  }

  void _onPhoneInputChanged(PhoneInputChanged event, emit) {
    final isPhoneValid = ValidationUtils.isValidPhoneNumber(event.phone);

    final isEnableVerifyButton =
        isPhoneValid && state.fullName.isNotEmpty && state.countryMobile != null;

    emit(state.copyWith(
        phoneNumber: event.phone,
        errorFullName: event.phone.isEmpty ? "Full name empty" : null,
        errorPhone: !isPhoneValid ? "Your phone number is not valid, please try again" : null,
        isEnableVerifyButton: isEnableVerifyButton));
  }

  void _onCountrySelected(CountrySelected event, emit) async {
    // if (_listCountry.isEmpty) {
    //   _listCountry = await _dataAppRepository.getListCountry();
    // }
    // final country = await navigator.showModalBottomSheet(
    //     ShowPopupSelectedCountry(
    //         title: S.current.hint_country_of_origin,
    //         listCountry: _listCountry,
    //         showDialingCode: false,
    //         countrySelected: state.countryMobile),
    //     isScrollControlled: true) as CountryMobileData?;

    // final isPhoneValid = ValidationUtils.isValidPhoneNumber(state.phoneNumber);

    // final isEnableVerifyButton = state.fullName.isNotEmpty && country != null && isPhoneValid;

    // emit(
    //   state.copyWith(
    //     countryMobile: country,
    //     dialingCode: country!.dialCode,
    //     errorCountry: country == null ? 'Country empty' : null,
    //     isEnableVerifyButton: isEnableVerifyButton,
    //     errorPhone: null,
    //   ),
    // );
  }

  void _onDialingCode(DialingCodeSelected event, emit) async {
    // if (_listCountry.isEmpty) {
    //   _listCountry = await _dataAppRepository.getListCountry();
    // }
    // final country = await navigator.showModalBottomSheet(
    //     ShowPopupSelectedCountry(
    //       title: S.current.hint_country_of_origin,
    //       listCountry: _listCountry,
    //       showDialingCode: true,
    //     ),
    //     isScrollControlled: true) as CountryMobileData;

    // if (country == null) {
    //   return;
    // }

    // emit(state.copyWith(
    //   dialingCode: country.dialCode,
    //   errorPhone: null,
    // ));
  }

  void _onConfirmButtonPressed(ConfirmButtonPressed event, emit) async {
    try {
      await _accountRepository.updateUserInformation(
          fullName: state.fullName,
          isoCountryCode: '',
          dialingCode: '',
          phoneNumber: '',
          reference: state.reference);

      // final userAccount = mySharePref.getString(key: SharedPreferenceKeys.currentUser);

      // if (userAccount.isEmpty) {
      //   await authUtils.login(state.email, state.masterPass, isRegister: true);
      // } else {
      //   Map<String, dynamic> user = await _commonApiClient.fetchUserInfo();
      //   final listCountry = await _dataAppRepository.getListCountry();

      //   var country;

      // if (user['country_code'] != null) {
      //   country = listCountry.firstWhere((item) => item.isoCountryCode == user['country_code']);
      // }

      // _dataAppRepository.saveUserInfo(User(
      //   email: user['email'],
      //   fullName: user['full_name'],
      //   country: country,
      //   phone: user['phone'],
      //   dialingCode: user['dialing_code'],
      //   userRef: user['reference'],
      //   lastLogin: user['last_login'],
      // ));
      // }
      emit(state.copyWith(isSuccess: true));
    } catch (error) {
      print(error);
    }
  }
}
