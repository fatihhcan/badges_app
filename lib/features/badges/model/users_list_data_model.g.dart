// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_list_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersDataModel _$UsersDataModelFromJson(Map<String, dynamic> json) =>
    UsersDataModel(
      relatedPerson: json['RelatedPerson'] as List<dynamic>?,
      principalCount: json['PrincipalCount'] as String?,
      praiseRating: json['PraiseRating'] as String?,
      message: json['Message'] as String?,
      authorTitle: json['Author.title'] as String?,
      badge: json['Badge'] = List<Badge>.from(json['Badge'].map((x) => Badge.fromJson(x))).toList(),
      author: json['Author'] = List<Author>.from(json['Author'].map((x) => Author.fromJson(x))).toList(),
      created: json['Created'] as String?,
      id: json['ID'] as String?,
    );

Map<String, dynamic> _$UsersDataModelToJson(UsersDataModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'PraiseRating': instance.praiseRating,
      'PrincipalCount': instance.principalCount,
      'Message': instance.message,
      'Author.title': instance.authorTitle,
      'Created': instance.created,
      'Badge': instance.badge,
      'Author': instance.author,
      'RelatedPerson': instance.relatedPerson,
    };

