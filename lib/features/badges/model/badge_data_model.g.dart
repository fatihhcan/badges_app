// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BadgeDataModel _$BadgeDataModelFromJson(Map<String, dynamic> json) =>
    BadgeDataModel(
      odataType: json['odata.type'] as String?,
      odataId: json['odata.id'] as String?,
      odataEtag: json['odata.etag'] as String?,
      odataEditLink: json['odata.editLink'] as String?,
      title: json['Title'] as String?,
      badgeIcon: json['BadgeIcon'] as String?,
      id: json['ID'] as int?,
    );

Map<String, dynamic> _$BadgeDataModelToJson(BadgeDataModel instance) =>
    <String, dynamic>{
      'odata.type': instance.odataType,
      'odata.id': instance.odataId,
      'odata.etag': instance.odataEtag,
      'odata.editLink': instance.odataEditLink,
      'Title': instance.title,
      'BadgeIcon': instance.badgeIcon,
      'ID': instance.id,
    };
