// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressSearchState {
  String get textSearch => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<AddressSearchResult> get items => throw _privateConstructorUsedError;

  /// Create a copy of AddressSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressSearchStateCopyWith<AddressSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressSearchStateCopyWith<$Res> {
  factory $AddressSearchStateCopyWith(
          AddressSearchState value, $Res Function(AddressSearchState) then) =
      _$AddressSearchStateCopyWithImpl<$Res, AddressSearchState>;
  @useResult
  $Res call(
      {String textSearch, bool isLoading, List<AddressSearchResult> items});
}

/// @nodoc
class _$AddressSearchStateCopyWithImpl<$Res, $Val extends AddressSearchState>
    implements $AddressSearchStateCopyWith<$Res> {
  _$AddressSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textSearch = null,
    Object? isLoading = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      textSearch: null == textSearch
          ? _value.textSearch
          : textSearch // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AddressSearchResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressSearchStateImplCopyWith<$Res>
    implements $AddressSearchStateCopyWith<$Res> {
  factory _$$AddressSearchStateImplCopyWith(_$AddressSearchStateImpl value,
          $Res Function(_$AddressSearchStateImpl) then) =
      __$$AddressSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String textSearch, bool isLoading, List<AddressSearchResult> items});
}

/// @nodoc
class __$$AddressSearchStateImplCopyWithImpl<$Res>
    extends _$AddressSearchStateCopyWithImpl<$Res, _$AddressSearchStateImpl>
    implements _$$AddressSearchStateImplCopyWith<$Res> {
  __$$AddressSearchStateImplCopyWithImpl(_$AddressSearchStateImpl _value,
      $Res Function(_$AddressSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textSearch = null,
    Object? isLoading = null,
    Object? items = null,
  }) {
    return _then(_$AddressSearchStateImpl(
      textSearch: null == textSearch
          ? _value.textSearch
          : textSearch // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AddressSearchResult>,
    ));
  }
}

/// @nodoc

class _$AddressSearchStateImpl implements _AddressSearchState {
  const _$AddressSearchStateImpl(
      {this.textSearch = "",
      this.isLoading = false,
      final List<AddressSearchResult> items = const []})
      : _items = items;

  @override
  @JsonKey()
  final String textSearch;
  @override
  @JsonKey()
  final bool isLoading;
  final List<AddressSearchResult> _items;
  @override
  @JsonKey()
  List<AddressSearchResult> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'AddressSearchState(textSearch: $textSearch, isLoading: $isLoading, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressSearchStateImpl &&
            (identical(other.textSearch, textSearch) ||
                other.textSearch == textSearch) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textSearch, isLoading,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of AddressSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressSearchStateImplCopyWith<_$AddressSearchStateImpl> get copyWith =>
      __$$AddressSearchStateImplCopyWithImpl<_$AddressSearchStateImpl>(
          this, _$identity);
}

abstract class _AddressSearchState implements AddressSearchState {
  const factory _AddressSearchState(
      {final String textSearch,
      final bool isLoading,
      final List<AddressSearchResult> items}) = _$AddressSearchStateImpl;

  @override
  String get textSearch;
  @override
  bool get isLoading;
  @override
  List<AddressSearchResult> get items;

  /// Create a copy of AddressSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressSearchStateImplCopyWith<_$AddressSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
