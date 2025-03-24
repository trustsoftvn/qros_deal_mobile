// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pref_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrefUserImpl _$$PrefUserImplFromJson(Map<String, dynamic> json) =>
    _$PrefUserImpl(
      email: json['email'] as String? ?? "",
      fullName: json['fullName'] as String? ?? "",
      userRef: json['userRef'] as String? ?? "",
      lastLogin: json['lastLogin'] as String? ?? null,
    );

Map<String, dynamic> _$$PrefUserImplToJson(_$PrefUserImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fullName': instance.fullName,
      'userRef': instance.userRef,
      'lastLogin': instance.lastLogin,
    };
