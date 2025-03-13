// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreDtoImpl _$$StoreDtoImplFromJson(Map<String, dynamic> json) =>
    _$StoreDtoImpl(
      name: json['name'] as String? ?? "",
      phoneNumber: json['phoneNumber'] as String? ?? "",
      address: json['address'] as String? ?? "",
      latitude: json['latitude'] as String? ?? "",
      longitude: json['longitude'] as String? ?? "",
      logo: json['logo'] as String? ?? "",
      userId: (json['userId'] as num?)?.toInt() ?? 0,
      id: (json['id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$StoreDtoImplToJson(_$StoreDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'logo': instance.logo,
      'userId': instance.userId,
      'id': instance.id,
    };
