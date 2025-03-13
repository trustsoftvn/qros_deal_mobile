// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_verify_email_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterVerifyEmailState {
  String get email => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;
  bool get isEnableVerifyButton => throw _privateConstructorUsedError;
  int get remainingTime => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

  /// Create a copy of RegisterVerifyEmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterVerifyEmailStateCopyWith<RegisterVerifyEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterVerifyEmailStateCopyWith<$Res> {
  factory $RegisterVerifyEmailStateCopyWith(RegisterVerifyEmailState value,
          $Res Function(RegisterVerifyEmailState) then) =
      _$RegisterVerifyEmailStateCopyWithImpl<$Res, RegisterVerifyEmailState>;
  @useResult
  $Res call(
      {String email,
      String otp,
      String reference,
      bool isEnableVerifyButton,
      int remainingTime,
      bool isSuccess});
}

/// @nodoc
class _$RegisterVerifyEmailStateCopyWithImpl<$Res,
        $Val extends RegisterVerifyEmailState>
    implements $RegisterVerifyEmailStateCopyWith<$Res> {
  _$RegisterVerifyEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterVerifyEmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
    Object? reference = null,
    Object? isEnableVerifyButton = null,
    Object? remainingTime = null,
    Object? isSuccess = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      isEnableVerifyButton: null == isEnableVerifyButton
          ? _value.isEnableVerifyButton
          : isEnableVerifyButton // ignore: cast_nullable_to_non_nullable
              as bool,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterVerifyEmailStateImplCopyWith<$Res>
    implements $RegisterVerifyEmailStateCopyWith<$Res> {
  factory _$$RegisterVerifyEmailStateImplCopyWith(
          _$RegisterVerifyEmailStateImpl value,
          $Res Function(_$RegisterVerifyEmailStateImpl) then) =
      __$$RegisterVerifyEmailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String otp,
      String reference,
      bool isEnableVerifyButton,
      int remainingTime,
      bool isSuccess});
}

/// @nodoc
class __$$RegisterVerifyEmailStateImplCopyWithImpl<$Res>
    extends _$RegisterVerifyEmailStateCopyWithImpl<$Res,
        _$RegisterVerifyEmailStateImpl>
    implements _$$RegisterVerifyEmailStateImplCopyWith<$Res> {
  __$$RegisterVerifyEmailStateImplCopyWithImpl(
      _$RegisterVerifyEmailStateImpl _value,
      $Res Function(_$RegisterVerifyEmailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterVerifyEmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
    Object? reference = null,
    Object? isEnableVerifyButton = null,
    Object? remainingTime = null,
    Object? isSuccess = null,
  }) {
    return _then(_$RegisterVerifyEmailStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      isEnableVerifyButton: null == isEnableVerifyButton
          ? _value.isEnableVerifyButton
          : isEnableVerifyButton // ignore: cast_nullable_to_non_nullable
              as bool,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisterVerifyEmailStateImpl implements _RegisterVerifyEmailState {
  const _$RegisterVerifyEmailStateImpl(
      {this.email = "",
      this.otp = "",
      this.reference = "",
      this.isEnableVerifyButton = false,
      this.remainingTime = 0,
      this.isSuccess = false});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String otp;
  @override
  @JsonKey()
  final String reference;
  @override
  @JsonKey()
  final bool isEnableVerifyButton;
  @override
  @JsonKey()
  final int remainingTime;
  @override
  @JsonKey()
  final bool isSuccess;

  @override
  String toString() {
    return 'RegisterVerifyEmailState(email: $email, otp: $otp, reference: $reference, isEnableVerifyButton: $isEnableVerifyButton, remainingTime: $remainingTime, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterVerifyEmailStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.isEnableVerifyButton, isEnableVerifyButton) ||
                other.isEnableVerifyButton == isEnableVerifyButton) &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, otp, reference,
      isEnableVerifyButton, remainingTime, isSuccess);

  /// Create a copy of RegisterVerifyEmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterVerifyEmailStateImplCopyWith<_$RegisterVerifyEmailStateImpl>
      get copyWith => __$$RegisterVerifyEmailStateImplCopyWithImpl<
          _$RegisterVerifyEmailStateImpl>(this, _$identity);
}

abstract class _RegisterVerifyEmailState implements RegisterVerifyEmailState {
  const factory _RegisterVerifyEmailState(
      {final String email,
      final String otp,
      final String reference,
      final bool isEnableVerifyButton,
      final int remainingTime,
      final bool isSuccess}) = _$RegisterVerifyEmailStateImpl;

  @override
  String get email;
  @override
  String get otp;
  @override
  String get reference;
  @override
  bool get isEnableVerifyButton;
  @override
  int get remainingTime;
  @override
  bool get isSuccess;

  /// Create a copy of RegisterVerifyEmailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterVerifyEmailStateImplCopyWith<_$RegisterVerifyEmailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
