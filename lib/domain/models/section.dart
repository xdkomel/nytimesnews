import 'package:freezed_annotation/freezed_annotation.dart';

import 'article.dart';

part 'section.freezed.dart';
part 'section.g.dart';

@freezed
class Section with _$Section {

  factory Section({
    required String status,
    required String copyright,
    required String section,
    @JsonKey(name: 'last_updated') required String lastUpdated,
    @JsonKey(name: 'num_results') required int numResults,
    required List<Article> results,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);
}