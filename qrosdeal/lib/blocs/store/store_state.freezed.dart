// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoreState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<StoreDto> get stores => throw _privateConstructorUsedError;

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreStateCopyWith<StoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreStateCopyWith<$Res> {
  factory $StoreStateCopyWith(
          StoreState value, $Res Function(StoreState) then) =
      _$StoreStateCopyWithImpl<$Res, StoreState>;
  @useResult
  $Res call({bool isLoading, List<StoreDto> stores});
}

/// @nodoc
class _$StoreStateCopyWithImpl<$Res, $Val extends StoreState>
    implements $StoreStateCopyWith<$Res> {
  _$StoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? stores = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      stores: null == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreStateImplCopyWith<$Res>
    implements $StoreStateCopyWith<$Res> {
  factory _$$StoreStateImplCopyWith(
          _$StoreStateImpl value, $Res Function(_$StoreStateImpl) then) =
      __$$StoreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<StoreDto> stores});
}

/// @nodoc
class __$$StoreStateImplCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res, _$StoreStateImpl>
    implements _$$StoreStateImplCopyWith<$Res> {
  __$$StoreStateImplCopyWithImpl(
      _$StoreStateImpl _value, $Res Function(_$StoreStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? stores = null,
  }) {
    return _then(_$StoreStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      stores: null == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreDto>,
    ));
  }
}

/// @nodoc

class _$StoreStateImpl implements _StoreState {
  const _$StoreStateImpl(
      {this.isLoading = false, final List<StoreDto> stores = const []})
      : _stores = stores;

  @override
  @JsonKey()
  final bool isLoading;
  final List<StoreDto> _stores;
  @override
  @JsonKey()
  List<StoreDto> get stores {
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stores);
  }

  @override
  String toString() {
    return 'StoreState(isLoading: $isLoading, stores: $stores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._stores, _stores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_stores));

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreStateImplCopyWith<_$StoreStateImpl> get copyWith =>
      __$$StoreStateImplCopyWithImpl<_$StoreStateImpl>(this, _$identity);
}

abstract class _StoreState implements StoreState {
  const factory _StoreState(
      {final bool isLoading, final List<StoreDto> stores}) = _$StoreStateImpl;

  @override
  bool get isLoading;
  @override
  List<StoreDto> get stores;

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreStateImplCopyWith<_$StoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
