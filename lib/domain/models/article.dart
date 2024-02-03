import 'package:freezed_annotation/freezed_annotation.dart';

import 'multimedia.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {

  factory Article({
    required String section,
    required String subsection,
    required String title,
    required String abstract,
    required String url,
    required String uri,
    required String byline,
    @JsonKey(name: 'item_type') required String itemType,
    @JsonKey(name: 'updated_date') required String updatedDate,
    @JsonKey(name: 'created_date') required String createdDate,
    @JsonKey(name: 'published_date') required String publishedDate,
    @JsonKey(name: 'material_type_facet') required String materialTypeFacet,
    required String kicker,
    @JsonKey(name: 'des_facet') required List<dynamic> desFacet,
    @JsonKey(name: 'per_facet') required List<dynamic> perFacet,
    @JsonKey(name: 'geo_facet') required List<dynamic> geoFacet,
    required List<Multimedia>? multimedia,
    @JsonKey(name: 'short_url') required String shortUrl,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
}