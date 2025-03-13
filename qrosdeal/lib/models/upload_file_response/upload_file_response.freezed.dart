// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadFileResponse _$UploadFileResponseFromJson(Map<String, dynamic> json) {
  return _UploadFileResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadFileResponse {
  String get url => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;

  /// Serializes this UploadFileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadFileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadFileResponseCopyWith<UploadFileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileResponseCopyWith<$Res> {
  factory $UploadFileResponseCopyWith(
          UploadFileResponse value, $Res Function(UploadFileResponse) then) =
      _$UploadFileResponseCopyWithImpl<$Res, UploadFileResponse>;
  @useResult
  $Res call({String url, String key, bool isPublic});
}

/// @nodoc
class _$UploadFileResponseCopyWithImpl<$Res, $Val extends UploadFileResponse>
    implements $UploadFileResponseCopyWith<$Res> {
  _$UploadFileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadFileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? key = null,
    Object? isPublic = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFileResponseImplCopyWith<$Res>
    implements $UploadFileResponseCopyWith<$Res> {
  factory _$$UploadFileResponseImplCopyWith(_$UploadFileResponseImpl value,
          $Res Function(_$UploadFileResponseImpl) then) =
      __$$UploadFileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String key, bool isPublic});
}

/// @nodoc
class __$$UploadFileResponseImplCopyWithImpl<$Res>
    extends _$UploadFileResponseCopyWithImpl<$Res, _$UploadFileResponseImpl>
    implements _$$UploadFileResponseImplCopyWith<$Res> {
  __$$UploadFileResponseImplCopyWithImpl(_$UploadFileResponseImpl _value,
      $Res Function(_$UploadFileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadFileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? key = null,
    Object? isPublic = null,
  }) {
    return _then(_$UploadFileResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadFileResponseImpl implements _UploadFileResponse {
  const _$UploadFileResponseImpl(
      {this.url = "", this.key = "", this.isPublic = false});

  factory _$UploadFileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadFileResponseImplFromJson(json);

  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final bool isPublic;

  @override
  String toString() {
    return 'UploadFileResponse(url: $url, key: $key, isPublic: $isPublic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileResponseImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, key, isPublic);

  /// Create a copy of UploadFileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileResponseImplCopyWith<_$UploadFileResponseImpl> get copyWith =>
      __$$UploadFileResponseImplCopyWithImpl<_$UploadFileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadFileResponseImplToJson(
      this,
    );
  }
}

abstract class _UploadFileResponse implements UploadFileResponse {
  const factory _UploadFileResponse(
      {final String url,
      final String key,
      final bool isPublic}) = _$UploadFileResponseImpl;

  factory _UploadFileResponse.fromJson(Map<String, dynamic> json) =
      _$UploadFileResponseImpl.fromJson;

  @override
  String get url;
  @override
  String get key;
  @override
  bool get isPublic;

  /// Create a copy of UploadFileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadFileResponseImplCopyWith<_$UploadFileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
