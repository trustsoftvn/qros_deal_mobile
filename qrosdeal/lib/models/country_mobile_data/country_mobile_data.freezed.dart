// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_mobile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountryMobileData {
  String get name => throw _privateConstructorUsedError;
  String get dialCode => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get isoCountryCode => throw _privateConstructorUsedError;
  String? get currencyCode => throw _privateConstructorUsedError;

  /// Create a copy of CountryMobileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryMobileDataCopyWith<CountryMobileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryMobileDataCopyWith<$Res> {
  factory $CountryMobileDataCopyWith(
          CountryMobileData value, $Res Function(CountryMobileData) then) =
      _$CountryMobileDataCopyWithImpl<$Res, CountryMobileData>;
  @useResult
  $Res call(
      {String name,
      String dialCode,
      String flag,
      String currency,
      String isoCountryCode,
      String? currencyCode});
}

/// @nodoc
class _$CountryMobileDataCopyWithImpl<$Res, $Val extends CountryMobileData>
    implements $CountryMobileDataCopyWith<$Res> {
  _$CountryMobileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryMobileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dialCode = null,
    Object? flag = null,
    Object? currency = null,
    Object? isoCountryCode = null,
    Object? currencyCode = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dialCode: null == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      isoCountryCode: null == isoCountryCode
          ? _value.isoCountryCode
          : isoCountryCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryMobileDataImplCopyWith<$Res>
    implements $CountryMobileDataCopyWith<$Res> {
  factory _$$CountryMobileDataImplCopyWith(_$CountryMobileDataImpl value,
          $Res Function(_$CountryMobileDataImpl) then) =
      __$$CountryMobileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String dialCode,
      String flag,
      String currency,
      String isoCountryCode,
      String? currencyCode});
}

/// @nodoc
class __$$CountryMobileDataImplCopyWithImpl<$Res>
    extends _$CountryMobileDataCopyWithImpl<$Res, _$CountryMobileDataImpl>
    implements _$$CountryMobileDataImplCopyWith<$Res> {
  __$$CountryMobileDataImplCopyWithImpl(_$CountryMobileDataImpl _value,
      $Res Function(_$CountryMobileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryMobileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dialCode = null,
    Object? flag = null,
    Object? currency = null,
    Object? isoCountryCode = null,
    Object? currencyCode = freezed,
  }) {
    return _then(_$CountryMobileDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dialCode: null == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      isoCountryCode: null == isoCountryCode
          ? _value.isoCountryCode
          : isoCountryCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CountryMobileDataImpl implements _CountryMobileData {
  const _$CountryMobileDataImpl(
      {this.name = "",
      this.dialCode = "",
      this.flag = "",
      this.currency = "",
      this.isoCountryCode = "",
      this.currencyCode = null});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String dialCode;
  @override
  @JsonKey()
  final String flag;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final String isoCountryCode;
  @override
  @JsonKey()
  final String? currencyCode;

  @override
  String toString() {
    return 'CountryMobileData(name: $name, dialCode: $dialCode, flag: $flag, currency: $currency, isoCountryCode: $isoCountryCode, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryMobileDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dialCode, dialCode) ||
                other.dialCode == dialCode) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isoCountryCode, isoCountryCode) ||
                other.isoCountryCode == isoCountryCode) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, dialCode, flag, currency,
      isoCountryCode, currencyCode);

  /// Create a copy of CountryMobileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryMobileDataImplCopyWith<_$CountryMobileDataImpl> get copyWith =>
      __$$CountryMobileDataImplCopyWithImpl<_$CountryMobileDataImpl>(
          this, _$identity);
}

abstract class _CountryMobileData implements CountryMobileData {
  const factory _CountryMobileData(
      {final String name,
      final String dialCode,
      final String flag,
      final String currency,
      final String isoCountryCode,
      final String? currencyCode}) = _$CountryMobileDataImpl;

  @override
  String get name;
  @override
  String get dialCode;
  @override
  String get flag;
  @override
  String get currency;
  @override
  String get isoCountryCode;
  @override
  String? get currencyCode;

  /// Create a copy of CountryMobileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryMobileDataImplCopyWith<_$CountryMobileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
