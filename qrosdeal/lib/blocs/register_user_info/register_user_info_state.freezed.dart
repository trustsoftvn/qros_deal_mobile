// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterUserInfoState {
  String get email => throw _privateConstructorUsedError;
  String get masterPass => throw _privateConstructorUsedError;
  String get pinCode => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;
  String get dialingCode => throw _privateConstructorUsedError;
  String? get errorFullName => throw _privateConstructorUsedError;
  String? get errorCountry => throw _privateConstructorUsedError;
  String? get errorPhone => throw _privateConstructorUsedError;
  CountryMobileData? get countryMobile => throw _privateConstructorUsedError;
  bool get isEnableVerifyButton => throw _privateConstructorUsedError;
  bool get canGoBack => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

  /// Create a copy of RegisterUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterUserInfoStateCopyWith<RegisterUserInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserInfoStateCopyWith<$Res> {
  factory $RegisterUserInfoStateCopyWith(RegisterUserInfoState value,
          $Res Function(RegisterUserInfoState) then) =
      _$RegisterUserInfoStateCopyWithImpl<$Res, RegisterUserInfoState>;
  @useResult
  $Res call(
      {String email,
      String masterPass,
      String pinCode,
      String fullName,
      String phoneNumber,
      String reference,
      String dialingCode,
      String? errorFullName,
      String? errorCountry,
      String? errorPhone,
      CountryMobileData? countryMobile,
      bool isEnableVerifyButton,
      bool canGoBack,
      bool isSuccess});

  $CountryMobileDataCopyWith<$Res>? get countryMobile;
}

/// @nodoc
class _$RegisterUserInfoStateCopyWithImpl<$Res,
        $Val extends RegisterUserInfoState>
    implements $RegisterUserInfoStateCopyWith<$Res> {
  _$RegisterUserInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? masterPass = null,
    Object? pinCode = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? reference = null,
    Object? dialingCode = null,
    Object? errorFullName = freezed,
    Object? errorCountry = freezed,
    Object? errorPhone = freezed,
    Object? countryMobile = freezed,
    Object? isEnableVerifyButton = null,
    Object? canGoBack = null,
    Object? isSuccess = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      masterPass: null == masterPass
          ? _value.masterPass
          : masterPass // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      dialingCode: null == dialingCode
          ? _value.dialingCode
          : dialingCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorFullName: freezed == errorFullName
          ? _value.errorFullName
          : errorFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCountry: freezed == errorCountry
          ? _value.errorCountry
          : errorCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      errorPhone: freezed == errorPhone
          ? _value.errorPhone
          : errorPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryMobile: freezed == countryMobile
          ? _value.countryMobile
          : countryMobile // ignore: cast_nullable_to_non_nullable
              as CountryMobileData?,
      isEnableVerifyButton: null == isEnableVerifyButton
          ? _value.isEnableVerifyButton
          : isEnableVerifyButton // ignore: cast_nullable_to_non_nullable
              as bool,
      canGoBack: null == canGoBack
          ? _value.canGoBack
          : canGoBack // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of RegisterUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryMobileDataCopyWith<$Res>? get countryMobile {
    if (_value.countryMobile == null) {
      return null;
    }

    return $CountryMobileDataCopyWith<$Res>(_value.countryMobile!, (value) {
      return _then(_value.copyWith(countryMobile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterUserInfoStateImplCopyWith<$Res>
    implements $RegisterUserInfoStateCopyWith<$Res> {
  factory _$$RegisterUserInfoStateImplCopyWith(
          _$RegisterUserInfoStateImpl value,
          $Res Function(_$RegisterUserInfoStateImpl) then) =
      __$$RegisterUserInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String masterPass,
      String pinCode,
      String fullName,
      String phoneNumber,
      String reference,
      String dialingCode,
      String? errorFullName,
      String? errorCountry,
      String? errorPhone,
      CountryMobileData? countryMobile,
      bool isEnableVerifyButton,
      bool canGoBack,
      bool isSuccess});

  @override
  $CountryMobileDataCopyWith<$Res>? get countryMobile;
}

/// @nodoc
class __$$RegisterUserInfoStateImplCopyWithImpl<$Res>
    extends _$RegisterUserInfoStateCopyWithImpl<$Res,
        _$RegisterUserInfoStateImpl>
    implements _$$RegisterUserInfoStateImplCopyWith<$Res> {
  __$$RegisterUserInfoStateImplCopyWithImpl(_$RegisterUserInfoStateImpl _value,
      $Res Function(_$RegisterUserInfoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? masterPass = null,
    Object? pinCode = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? reference = null,
    Object? dialingCode = null,
    Object? errorFullName = freezed,
    Object? errorCountry = freezed,
    Object? errorPhone = freezed,
    Object? countryMobile = freezed,
    Object? isEnableVerifyButton = null,
    Object? canGoBack = null,
    Object? isSuccess = null,
  }) {
    return _then(_$RegisterUserInfoStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      masterPass: null == masterPass
          ? _value.masterPass
          : masterPass // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      dialingCode: null == dialingCode
          ? _value.dialingCode
          : dialingCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorFullName: freezed == errorFullName
          ? _value.errorFullName
          : errorFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCountry: freezed == errorCountry
          ? _value.errorCountry
          : errorCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      errorPhone: freezed == errorPhone
          ? _value.errorPhone
          : errorPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryMobile: freezed == countryMobile
          ? _value.countryMobile
          : countryMobile // ignore: cast_nullable_to_non_nullable
              as CountryMobileData?,
      isEnableVerifyButton: null == isEnableVerifyButton
          ? _value.isEnableVerifyButton
          : isEnableVerifyButton // ignore: cast_nullable_to_non_nullable
              as bool,
      canGoBack: null == canGoBack
          ? _value.canGoBack
          : canGoBack // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisterUserInfoStateImpl implements _RegisterUserInfoState {
  const _$RegisterUserInfoStateImpl(
      {this.email = "",
      this.masterPass = "",
      this.pinCode = "",
      this.fullName = "",
      this.phoneNumber = "",
      this.reference = "",
      this.dialingCode = "",
      this.errorFullName = null,
      this.errorCountry = null,
      this.errorPhone = null,
      this.countryMobile = null,
      this.isEnableVerifyButton = false,
      this.canGoBack = false,
      this.isSuccess = false});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String masterPass;
  @override
  @JsonKey()
  final String pinCode;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String reference;
  @override
  @JsonKey()
  final String dialingCode;
  @override
  @JsonKey()
  final String? errorFullName;
  @override
  @JsonKey()
  final String? errorCountry;
  @override
  @JsonKey()
  final String? errorPhone;
  @override
  @JsonKey()
  final CountryMobileData? countryMobile;
  @override
  @JsonKey()
  final bool isEnableVerifyButton;
  @override
  @JsonKey()
  final bool canGoBack;
  @override
  @JsonKey()
  final bool isSuccess;

  @override
  String toString() {
    return 'RegisterUserInfoState(email: $email, masterPass: $masterPass, pinCode: $pinCode, fullName: $fullName, phoneNumber: $phoneNumber, reference: $reference, dialingCode: $dialingCode, errorFullName: $errorFullName, errorCountry: $errorCountry, errorPhone: $errorPhone, countryMobile: $countryMobile, isEnableVerifyButton: $isEnableVerifyButton, canGoBack: $canGoBack, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserInfoStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.masterPass, masterPass) ||
                other.masterPass == masterPass) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.dialingCode, dialingCode) ||
                other.dialingCode == dialingCode) &&
            (identical(other.errorFullName, errorFullName) ||
                other.errorFullName == errorFullName) &&
            (identical(other.errorCountry, errorCountry) ||
                other.errorCountry == errorCountry) &&
            (identical(other.errorPhone, errorPhone) ||
                other.errorPhone == errorPhone) &&
            (identical(other.countryMobile, countryMobile) ||
                other.countryMobile == countryMobile) &&
            (identical(other.isEnableVerifyButton, isEnableVerifyButton) ||
                other.isEnableVerifyButton == isEnableVerifyButton) &&
            (identical(other.canGoBack, canGoBack) ||
                other.canGoBack == canGoBack) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      masterPass,
      pinCode,
      fullName,
      phoneNumber,
      reference,
      dialingCode,
      errorFullName,
      errorCountry,
      errorPhone,
      countryMobile,
      isEnableVerifyButton,
      canGoBack,
      isSuccess);

  /// Create a copy of RegisterUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserInfoStateImplCopyWith<_$RegisterUserInfoStateImpl>
      get copyWith => __$$RegisterUserInfoStateImplCopyWithImpl<
          _$RegisterUserInfoStateImpl>(this, _$identity);
}

abstract class _RegisterUserInfoState implements RegisterUserInfoState {
  const factory _RegisterUserInfoState(
      {final String email,
      final String masterPass,
      final String pinCode,
      final String fullName,
      final String phoneNumber,
      final String reference,
      final String dialingCode,
      final String? errorFullName,
      final String? errorCountry,
      final String? errorPhone,
      final CountryMobileData? countryMobile,
      final bool isEnableVerifyButton,
      final bool canGoBack,
      final bool isSuccess}) = _$RegisterUserInfoStateImpl;

  @override
  String get email;
  @override
  String get masterPass;
  @override
  String get pinCode;
  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  String get reference;
  @override
  String get dialingCode;
  @override
  String? get errorFullName;
  @override
  String? get errorCountry;
  @override
  String? get errorPhone;
  @override
  CountryMobileData? get countryMobile;
  @override
  bool get isEnableVerifyButton;
  @override
  bool get canGoBack;
  @override
  bool get isSuccess;

  /// Create a copy of RegisterUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterUserInfoStateImplCopyWith<_$RegisterUserInfoStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
