// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SectionImpl _$$SectionImplFromJson(Map<String, dynamic> json) =>
    _$SectionImpl(
      status: json['status'] as String,
      copyright: json['copyright'] as String,
      section: json['section'] as String,
      lastUpdated: json['last_updated'] as String,
      numResults: json['num_results'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SectionImplToJson(_$SectionImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'copyright': instance.copyright,
      'section': instance.section,
      'last_updated': instance.lastUpdated,
      'num_results': instance.numResults,
      'results': instance.results,
    };
