import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qrosdeal/core/base_bloc_state.dart';
import 'package:qrosdeal/models/country_mobile_data/country_mobile_data.dart';

part 'register_user_info_state.freezed.dart';

@freezed
class RegisterUserInfoState extends BaseBlocState with _$RegisterUserInfoState {
  const factory RegisterUserInfoState({
    @Default("") String email,
    @Default("") String masterPass,
    @Default("") String pinCode,
    @Default("") String fullName,
    @Default("") String phoneNumber,
    @Default("") String reference,
    @Default("") String dialingCode,
    @Default(null) String? errorFullName,
    @Default(null) String? errorCountry,
    @Default(null) String? errorPhone,
    @Default(null) CountryMobileData? countryMobile,
    @Default(false) bool isEnableVerifyButton,
    @Default(false) bool canGoBack,
    @Default(false) bool isSuccess,
  }) = _RegisterUserInfoState;
}
