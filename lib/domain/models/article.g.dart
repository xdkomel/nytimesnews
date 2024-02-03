// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      section: json['section'] as String,
      subsection: json['subsection'] as String,
      title: json['title'] as String,
      abstract: json['abstract'] as String,
      url: json['url'] as String,
      uri: json['uri'] as String,
      byline: json['byline'] as String,
      itemType: json['item_type'] as String,
      updatedDate: json['updated_date'] as String,
      createdDate: json['created_date'] as String,
      publishedDate: json['published_date'] as String,
      materialTypeFacet: json['material_type_facet'] as String,
      kicker: json['kicker'] as String,
      desFacet: json['des_facet'] as List<dynamic>,
      perFacet: json['per_facet'] as List<dynamic>,
      geoFacet: json['geo_facet'] as List<dynamic>,
      multimedia: (json['multimedia'] as List<dynamic>?)
          ?.map((e) => Multimedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      shortUrl: json['short_url'] as String,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'section': instance.section,
      'subsection': instance.subsection,
      'title': instance.title,
      'abstract': instance.abstract,
      'url': instance.url,
      'uri': instance.uri,
      'byline': instance.byline,
      'item_type': instance.itemType,
      'updated_date': instance.updatedDate,
      'created_date': instance.createdDate,
      'published_date': instance.publishedDate,
      'material_type_facet': instance.materialTypeFacet,
      'kicker': instance.kicker,
      'des_facet': instance.desFacet,
      'per_facet': instance.perFacet,
      'geo_facet': instance.geoFacet,
      'multimedia': instance.multimedia,
      'short_url': instance.shortUrl,
    };
