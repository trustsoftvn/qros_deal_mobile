// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressSearchResultImpl _$$AddressSearchResultImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressSearchResultImpl(
      title: json['title'] as String? ?? "",
      id: json['id'] as String? ?? "",
      address: json['address'] == null
          ? const Address()
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      position: json['position'] == null
          ? const Position()
          : Position.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressSearchResultImplToJson(
        _$AddressSearchResultImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'address': instance.address,
      'position': instance.position,
    };
