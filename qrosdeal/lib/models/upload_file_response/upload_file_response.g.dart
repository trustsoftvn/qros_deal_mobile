// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_file_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadFileResponseImpl _$$UploadFileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadFileResponseImpl(
      url: json['url'] as String? ?? "",
      key: json['key'] as String? ?? "",
      isPublic: json['isPublic'] as bool? ?? false,
    );

Map<String, dynamic> _$$UploadFileResponseImplToJson(
        _$UploadFileResponseImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'key': instance.key,
      'isPublic': instance.isPublic,
    };
