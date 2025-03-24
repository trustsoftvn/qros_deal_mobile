// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pref_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrefUser _$PrefUserFromJson(Map<String, dynamic> json) {
  return _PrefUser.fromJson(json);
}

/// @nodoc
mixin _$PrefUser {
  @JsonKey()
  String get email => throw _privateConstructorUsedError;
  @JsonKey()
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey()
  String get userRef => throw _privateConstructorUsedError;
  @JsonKey()
  String? get lastLogin => throw _privateConstructorUsedError;

  /// Serializes this PrefUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrefUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrefUserCopyWith<PrefUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrefUserCopyWith<$Res> {
  factory $PrefUserCopyWith(PrefUser value, $Res Function(PrefUser) then) =
      _$PrefUserCopyWithImpl<$Res, PrefUser>;
  @useResult
  $Res call(
      {@JsonKey() String email,
      @JsonKey() String fullName,
      @JsonKey() String userRef,
      @JsonKey() String? lastLogin});
}

/// @nodoc
class _$PrefUserCopyWithImpl<$Res, $Val extends PrefUser>
    implements $PrefUserCopyWith<$Res> {
  _$PrefUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrefUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? fullName = null,
    Object? userRef = null,
    Object? lastLogin = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrefUserImplCopyWith<$Res>
    implements $PrefUserCopyWith<$Res> {
  factory _$$PrefUserImplCopyWith(
          _$PrefUserImpl value, $Res Function(_$PrefUserImpl) then) =
      __$$PrefUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey() String email,
      @JsonKey() String fullName,
      @JsonKey() String userRef,
      @JsonKey() String? lastLogin});
}

/// @nodoc
class __$$PrefUserImplCopyWithImpl<$Res>
    extends _$PrefUserCopyWithImpl<$Res, _$PrefUserImpl>
    implements _$$PrefUserImplCopyWith<$Res> {
  __$$PrefUserImplCopyWithImpl(
      _$PrefUserImpl _value, $Res Function(_$PrefUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrefUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? fullName = null,
    Object? userRef = null,
    Object? lastLogin = freezed,
  }) {
    return _then(_$PrefUserImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrefUserImpl implements _PrefUser {
  const _$PrefUserImpl(
      {@JsonKey() this.email = "",
      @JsonKey() this.fullName = "",
      @JsonKey() this.userRef = "",
      @JsonKey() this.lastLogin = null});

  factory _$PrefUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrefUserImplFromJson(json);

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String userRef;
  @override
  @JsonKey()
  final String? lastLogin;

  @override
  String toString() {
    return 'PrefUser(email: $email, fullName: $fullName, userRef: $userRef, lastLogin: $lastLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrefUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.userRef, userRef) || other.userRef == userRef) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, fullName, userRef, lastLogin);

  /// Create a copy of PrefUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrefUserImplCopyWith<_$PrefUserImpl> get copyWith =>
      __$$PrefUserImplCopyWithImpl<_$PrefUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrefUserImplToJson(
      this,
    );
  }
}

abstract class _PrefUser implements PrefUser {
  const factory _PrefUser(
      {@JsonKey() final String email,
      @JsonKey() final String fullName,
      @JsonKey() final String userRef,
      @JsonKey() final String? lastLogin}) = _$PrefUserImpl;

  factory _PrefUser.fromJson(Map<String, dynamic> json) =
      _$PrefUserImpl.fromJson;

  @override
  @JsonKey()
  String get email;
  @override
  @JsonKey()
  String get fullName;
  @override
  @JsonKey()
  String get userRef;
  @override
  @JsonKey()
  String? get lastLogin;

  /// Create a copy of PrefUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrefUserImplCopyWith<_$PrefUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
