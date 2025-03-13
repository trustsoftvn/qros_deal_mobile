// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchAddressDTO _$SearchAddressDTOFromJson(Map<String, dynamic> json) {
  return _SearchAddressDTO.fromJson(json);
}

/// @nodoc
mixin _$SearchAddressDTO {
  List<AddressSearchResult> get items => throw _privateConstructorUsedError;

  /// Serializes this SearchAddressDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchAddressDTOCopyWith<SearchAddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAddressDTOCopyWith<$Res> {
  factory $SearchAddressDTOCopyWith(
          SearchAddressDTO value, $Res Function(SearchAddressDTO) then) =
      _$SearchAddressDTOCopyWithImpl<$Res, SearchAddressDTO>;
  @useResult
  $Res call({List<AddressSearchResult> items});
}

/// @nodoc
class _$SearchAddressDTOCopyWithImpl<$Res, $Val extends SearchAddressDTO>
    implements $SearchAddressDTOCopyWith<$Res> {
  _$SearchAddressDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AddressSearchResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchAddressDTOImplCopyWith<$Res>
    implements $SearchAddressDTOCopyWith<$Res> {
  factory _$$SearchAddressDTOImplCopyWith(_$SearchAddressDTOImpl value,
          $Res Function(_$SearchAddressDTOImpl) then) =
      __$$SearchAddressDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AddressSearchResult> items});
}

/// @nodoc
class __$$SearchAddressDTOImplCopyWithImpl<$Res>
    extends _$SearchAddressDTOCopyWithImpl<$Res, _$SearchAddressDTOImpl>
    implements _$$SearchAddressDTOImplCopyWith<$Res> {
  __$$SearchAddressDTOImplCopyWithImpl(_$SearchAddressDTOImpl _value,
      $Res Function(_$SearchAddressDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$SearchAddressDTOImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AddressSearchResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchAddressDTOImpl implements _SearchAddressDTO {
  const _$SearchAddressDTOImpl(
      {final List<AddressSearchResult> items = const []})
      : _items = items;

  factory _$SearchAddressDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchAddressDTOImplFromJson(json);

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
    return 'SearchAddressDTO(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAddressDTOImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of SearchAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAddressDTOImplCopyWith<_$SearchAddressDTOImpl> get copyWith =>
      __$$SearchAddressDTOImplCopyWithImpl<_$SearchAddressDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchAddressDTOImplToJson(
      this,
    );
  }
}

abstract class _SearchAddressDTO implements SearchAddressDTO {
  const factory _SearchAddressDTO({final List<AddressSearchResult> items}) =
      _$SearchAddressDTOImpl;

  factory _SearchAddressDTO.fromJson(Map<String, dynamic> json) =
      _$SearchAddressDTOImpl.fromJson;

  @override
  List<AddressSearchResult> get items;

  /// Create a copy of SearchAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAddressDTOImplCopyWith<_$SearchAddressDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
