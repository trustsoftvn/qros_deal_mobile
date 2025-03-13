// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommonState {
  Type? get blocType => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonStateCopyWith<CommonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<$Res> {
  factory $CommonStateCopyWith(
          CommonState value, $Res Function(CommonState) then) =
      _$CommonStateCopyWithImpl<$Res, CommonState>;
  @useResult
  $Res call({Type? blocType, String errorMessage, String createdAt});
}

/// @nodoc
class _$CommonStateCopyWithImpl<$Res, $Val extends CommonState>
    implements $CommonStateCopyWith<$Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocType = freezed,
    Object? errorMessage = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      blocType: freezed == blocType
          ? _value.blocType
          : blocType // ignore: cast_nullable_to_non_nullable
              as Type?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonStateImplCopyWith<$Res>
    implements $CommonStateCopyWith<$Res> {
  factory _$$CommonStateImplCopyWith(
          _$CommonStateImpl value, $Res Function(_$CommonStateImpl) then) =
      __$$CommonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Type? blocType, String errorMessage, String createdAt});
}

/// @nodoc
class __$$CommonStateImplCopyWithImpl<$Res>
    extends _$CommonStateCopyWithImpl<$Res, _$CommonStateImpl>
    implements _$$CommonStateImplCopyWith<$Res> {
  __$$CommonStateImplCopyWithImpl(
      _$CommonStateImpl _value, $Res Function(_$CommonStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocType = freezed,
    Object? errorMessage = null,
    Object? createdAt = null,
  }) {
    return _then(_$CommonStateImpl(
      blocType: freezed == blocType
          ? _value.blocType
          : blocType // ignore: cast_nullable_to_non_nullable
              as Type?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommonStateImpl implements _CommonState {
  const _$CommonStateImpl(
      {this.blocType = null, this.errorMessage = "", this.createdAt = ""});

  @override
  @JsonKey()
  final Type? blocType;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String createdAt;

  @override
  String toString() {
    return 'CommonState(blocType: $blocType, errorMessage: $errorMessage, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonStateImpl &&
            (identical(other.blocType, blocType) ||
                other.blocType == blocType) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, blocType, errorMessage, createdAt);

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      __$$CommonStateImplCopyWithImpl<_$CommonStateImpl>(this, _$identity);
}

abstract class _CommonState implements CommonState {
  const factory _CommonState(
      {final Type? blocType,
      final String errorMessage,
      final String createdAt}) = _$CommonStateImpl;

  @override
  Type? get blocType;
  @override
  String get errorMessage;
  @override
  String get createdAt;

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
