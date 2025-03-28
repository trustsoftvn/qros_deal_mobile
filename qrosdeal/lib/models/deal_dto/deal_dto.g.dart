// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DealDtoImpl _$$DealDtoImplFromJson(Map<String, dynamic> json) =>
    _$DealDtoImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      type: (json['type'] as num?)?.toInt() ?? 1,
      quanitity: (json['quanitity'] as num?)?.toInt() ?? 0,
      quantityStatus: (json['quantityStatus'] as num?)?.toInt() ?? 0,
      currency: json['currency'] as String? ?? "",
      condition: json['condition'] as String? ?? "",
      image: json['image'] as String? ?? "",
      discountPercent: (json['discountPercent'] as num?)?.toDouble() ?? 0,
      maxDiscount: (json['maxDiscount'] as num?)?.toDouble() ?? 0,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$DealDtoImplToJson(_$DealDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'quanitity': instance.quanitity,
      'quantityStatus': instance.quantityStatus,
      'currency': instance.currency,
      'condition': instance.condition,
      'image': instance.image,
      'discountPercent': instance.discountPercent,
      'maxDiscount': instance.maxDiscount,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };
