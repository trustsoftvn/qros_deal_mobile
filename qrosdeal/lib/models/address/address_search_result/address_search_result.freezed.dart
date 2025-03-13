// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressSearchResult _$AddressSearchResultFromJson(Map<String, dynamic> json) {
  return _AddressSearchResult.fromJson(json);
}

/// @nodoc
mixin _$AddressSearchResult {
  String get title => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  Position get position => throw _privateConstructorUsedError;

  /// Serializes this AddressSearchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressSearchResultCopyWith<AddressSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressSearchResultCopyWith<$Res> {
  factory $AddressSearchResultCopyWith(
          AddressSearchResult value, $Res Function(AddressSearchResult) then) =
      _$AddressSearchResultCopyWithImpl<$Res, AddressSearchResult>;
  @useResult
  $Res call({String title, String id, Address address, Position position});

  $AddressCopyWith<$Res> get address;
  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class _$AddressSearchResultCopyWithImpl<$Res, $Val extends AddressSearchResult>
    implements $AddressSearchResultCopyWith<$Res> {
  _$AddressSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
    Object? address = null,
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ) as $Val);
  }

  /// Create a copy of AddressSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of AddressSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get position {
    return $PositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressSearchResultImplCopyWith<$Res>
    implements $AddressSearchResultCopyWith<$Res> {
  factory _$$AddressSearchResultImplCopyWith(_$AddressSearchResultImpl value,
          $Res Function(_$AddressSearchResultImpl) then) =
      __$$AddressSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String id, Address address, Position position});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class __$$AddressSearchResultImplCopyWithImpl<$Res>
    extends _$AddressSearchResultCopyWithImpl<$Res, _$AddressSearchResultImpl>
    implements _$$AddressSearchResultImplCopyWith<$Res> {
  __$$AddressSearchResultImplCopyWithImpl(_$AddressSearchResultImpl _value,
      $Res Function(_$AddressSearchResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
    Object? address = null,
    Object? position = null,
  }) {
    return _then(_$AddressSearchResultImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressSearchResultImpl implements _AddressSearchResult {
  const _$AddressSearchResultImpl(
      {this.title = "",
      this.id = "",
      this.address = const Address(),
      this.position = const Position()});

  factory _$AddressSearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressSearchResultImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final Address address;
  @override
  @JsonKey()
  final Position position;

  @override
  String toString() {
    return 'AddressSearchResult(title: $title, id: $id, address: $address, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressSearchResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, id, address, position);

  /// Create a copy of AddressSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressSearchResultImplCopyWith<_$AddressSearchResultImpl> get copyWith =>
      __$$AddressSearchResultImplCopyWithImpl<_$AddressSearchResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressSearchResultImplToJson(
      this,
    );
  }
}

abstract class _AddressSearchResult implements AddressSearchResult {
  const factory _AddressSearchResult(
      {final String title,
      final String id,
      final Address address,
      final Position position}) = _$AddressSearchResultImpl;

  factory _AddressSearchResult.fromJson(Map<String, dynamic> json) =
      _$AddressSearchResultImpl.fromJson;

  @override
  String get title;
  @override
  String get id;
  @override
  Address get address;
  @override
  Position get position;

  /// Create a copy of AddressSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressSearchResultImplCopyWith<_$AddressSearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
