// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reel _$$_ReelFromJson(Map<String, dynamic> json) => _$_Reel(
      description: json['description'] as String?,
      sources: json['sources'] as String?,
      subtitle: json['subtitle'] as String?,
      thumb: json['thumb'] as String?,
      title: json['title'] as String?,
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ReelToJson(_$_Reel instance) => <String, dynamic>{
      'description': instance.description,
      'sources': instance.sources,
      'subtitle': instance.subtitle,
      'thumb': instance.thumb,
      'title': instance.title,
      'isLike': instance.isLike,
    };
