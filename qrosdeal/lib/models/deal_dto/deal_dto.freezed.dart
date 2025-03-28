// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DealDto _$DealDtoFromJson(Map<String, dynamic> json) {
  return _DealDto.fromJson(json);
}

/// @nodoc
mixin _$DealDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get quanitity => throw _privateConstructorUsedError;
  int get quantityStatus => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get discountPercent => throw _privateConstructorUsedError;
  double get maxDiscount => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Serializes this DealDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DealDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DealDtoCopyWith<DealDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealDtoCopyWith<$Res> {
  factory $DealDtoCopyWith(DealDto value, $Res Function(DealDto) then) =
      _$DealDtoCopyWithImpl<$Res, DealDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int type,
      int quanitity,
      int quantityStatus,
      String currency,
      String condition,
      String image,
      double discountPercent,
      double maxDiscount,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class _$DealDtoCopyWithImpl<$Res, $Val extends DealDto>
    implements $DealDtoCopyWith<$Res> {
  _$DealDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DealDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? quanitity = null,
    Object? quantityStatus = null,
    Object? currency = null,
    Object? condition = null,
    Object? image = null,
    Object? discountPercent = null,
    Object? maxDiscount = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      quanitity: null == quanitity
          ? _value.quanitity
          : quanitity // ignore: cast_nullable_to_non_nullable
              as int,
      quantityStatus: null == quantityStatus
          ? _value.quantityStatus
          : quantityStatus // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercent: null == discountPercent
          ? _value.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as double,
      maxDiscount: null == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DealDtoImplCopyWith<$Res> implements $DealDtoCopyWith<$Res> {
  factory _$$DealDtoImplCopyWith(
          _$DealDtoImpl value, $Res Function(_$DealDtoImpl) then) =
      __$$DealDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int type,
      int quanitity,
      int quantityStatus,
      String currency,
      String condition,
      String image,
      double discountPercent,
      double maxDiscount,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$DealDtoImplCopyWithImpl<$Res>
    extends _$DealDtoCopyWithImpl<$Res, _$DealDtoImpl>
    implements _$$DealDtoImplCopyWith<$Res> {
  __$$DealDtoImplCopyWithImpl(
      _$DealDtoImpl _value, $Res Function(_$DealDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DealDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? quanitity = null,
    Object? quantityStatus = null,
    Object? currency = null,
    Object? condition = null,
    Object? image = null,
    Object? discountPercent = null,
    Object? maxDiscount = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$DealDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      quanitity: null == quanitity
          ? _value.quanitity
          : quanitity // ignore: cast_nullable_to_non_nullable
              as int,
      quantityStatus: null == quantityStatus
          ? _value.quantityStatus
          : quantityStatus // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercent: null == discountPercent
          ? _value.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as double,
      maxDiscount: null == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DealDtoImpl implements _DealDto {
  const _$DealDtoImpl(
      {this.id = 0,
      this.name = "",
      this.description = "",
      this.type = 1,
      this.quanitity = 0,
      this.quantityStatus = 0,
      this.currency = "",
      this.condition = "",
      this.image = "",
      this.discountPercent = 0,
      this.maxDiscount = 0,
      this.startDate = null,
      this.endDate = null});

  factory _$DealDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DealDtoImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int type;
  @override
  @JsonKey()
  final int quanitity;
  @override
  @JsonKey()
  final int quantityStatus;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final String condition;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final double discountPercent;
  @override
  @JsonKey()
  final double maxDiscount;
  @override
  @JsonKey()
  final DateTime? startDate;
  @override
  @JsonKey()
  final DateTime? endDate;

  @override
  String toString() {
    return 'DealDto(id: $id, name: $name, description: $description, type: $type, quanitity: $quanitity, quantityStatus: $quantityStatus, currency: $currency, condition: $condition, image: $image, discountPercent: $discountPercent, maxDiscount: $maxDiscount, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.quanitity, quanitity) ||
                other.quanitity == quanitity) &&
            (identical(other.quantityStatus, quantityStatus) ||
                other.quantityStatus == quantityStatus) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.discountPercent, discountPercent) ||
                other.discountPercent == discountPercent) &&
            (identical(other.maxDiscount, maxDiscount) ||
                other.maxDiscount == maxDiscount) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      type,
      quanitity,
      quantityStatus,
      currency,
      condition,
      image,
      discountPercent,
      maxDiscount,
      startDate,
      endDate);

  /// Create a copy of DealDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DealDtoImplCopyWith<_$DealDtoImpl> get copyWith =>
      __$$DealDtoImplCopyWithImpl<_$DealDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DealDtoImplToJson(
      this,
    );
  }
}

abstract class _DealDto implements DealDto {
  const factory _DealDto(
      {final int id,
      final String name,
      final String description,
      final int type,
      final int quanitity,
      final int quantityStatus,
      final String currency,
      final String condition,
      final String image,
      final double discountPercent,
      final double maxDiscount,
      final DateTime? startDate,
      final DateTime? endDate}) = _$DealDtoImpl;

  factory _DealDto.fromJson(Map<String, dynamic> json) = _$DealDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get type;
  @override
  int get quanitity;
  @override
  int get quantityStatus;
  @override
  String get currency;
  @override
  String get condition;
  @override
  String get image;
  @override
  double get discountPercent;
  @override
  double get maxDiscount;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;

  /// Create a copy of DealDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DealDtoImplCopyWith<_$DealDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
