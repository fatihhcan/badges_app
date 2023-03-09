// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
      id: json['id'] as String?,
      title: json['title'] as String?,
      email: json['email'] as String?,
      sip: json['sip'] as String?,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'email': instance.email,
      'sip': instance.sip,
      'picture': instance.picture,
    };
