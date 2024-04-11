// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preview.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageSourceDataImpl _$$ImageSourceDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageSourceDataImpl(
      fullResolutionSource:
          ImageSourceModel.parseSource(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImageSourceDataImplToJson(
        _$ImageSourceDataImpl instance) =>
    <String, dynamic>{
      'source': instance.fullResolutionSource,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageSourceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'images': instance.images,
    };
