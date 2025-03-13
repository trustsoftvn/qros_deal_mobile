// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchAddressDTOImpl _$$SearchAddressDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchAddressDTOImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  AddressSearchResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SearchAddressDTOImplToJson(
        _$SearchAddressDTOImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
