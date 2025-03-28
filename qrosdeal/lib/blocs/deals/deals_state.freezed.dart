// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deals_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DealsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DealDto> get deals => throw _privateConstructorUsedError;

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DealsStateCopyWith<DealsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealsStateCopyWith<$Res> {
  factory $DealsStateCopyWith(
          DealsState value, $Res Function(DealsState) then) =
      _$DealsStateCopyWithImpl<$Res, DealsState>;
  @useResult
  $Res call({bool isLoading, List<DealDto> deals});
}

/// @nodoc
class _$DealsStateCopyWithImpl<$Res, $Val extends DealsState>
    implements $DealsStateCopyWith<$Res> {
  _$DealsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? deals = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      deals: null == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<DealDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DealsStateImplCopyWith<$Res>
    implements $DealsStateCopyWith<$Res> {
  factory _$$DealsStateImplCopyWith(
          _$DealsStateImpl value, $Res Function(_$DealsStateImpl) then) =
      __$$DealsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<DealDto> deals});
}

/// @nodoc
class __$$DealsStateImplCopyWithImpl<$Res>
    extends _$DealsStateCopyWithImpl<$Res, _$DealsStateImpl>
    implements _$$DealsStateImplCopyWith<$Res> {
  __$$DealsStateImplCopyWithImpl(
      _$DealsStateImpl _value, $Res Function(_$DealsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? deals = null,
  }) {
    return _then(_$DealsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      deals: null == deals
          ? _value._deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<DealDto>,
    ));
  }
}

/// @nodoc

class _$DealsStateImpl implements _DealsState {
  const _$DealsStateImpl(
      {this.isLoading = false, final List<DealDto> deals = const []})
      : _deals = deals;

  @override
  @JsonKey()
  final bool isLoading;
  final List<DealDto> _deals;
  @override
  @JsonKey()
  List<DealDto> get deals {
    if (_deals is EqualUnmodifiableListView) return _deals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deals);
  }

  @override
  String toString() {
    return 'DealsState(isLoading: $isLoading, deals: $deals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._deals, _deals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_deals));

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DealsStateImplCopyWith<_$DealsStateImpl> get copyWith =>
      __$$DealsStateImplCopyWithImpl<_$DealsStateImpl>(this, _$identity);
}

abstract class _DealsState implements DealsState {
  const factory _DealsState({final bool isLoading, final List<DealDto> deals}) =
      _$DealsStateImpl;

  @override
  bool get isLoading;
  @override
  List<DealDto> get deals;

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DealsStateImplCopyWith<_$DealsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
