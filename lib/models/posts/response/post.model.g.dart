// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      json['id'] as String,
      title: json['title'] as String,
      createdDate: PostModel.parseDate(json['created_utc'] as double),
      author: json['author'] as String?,
      url: json['url'] as String?,
      content: json['selftext'] as String?,
      preview: json['preview'] == null
          ? null
          : PreviewModel.fromJson(json['preview'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'created_utc': instance.createdDate.toIso8601String(),
      'author': instance.author,
      'url': instance.url,
      'selftext': instance.content,
      'preview': instance.preview,
    };
