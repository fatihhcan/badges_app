// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_user_badge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Badge _$BadgeFromJson(Map<String, dynamic> json) => Badge(
      lookupId: json['lookupId'] as int?,
      lookupValue: json['lookupValue'] as String?,
      isSecretFieldValue: json['isSecretFieldValue'] as bool?,
    );

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
      'lookupId': instance.lookupId,
      'lookupValue': instance.lookupValue,
      'isSecretFieldValue': instance.isSecretFieldValue,
    };
