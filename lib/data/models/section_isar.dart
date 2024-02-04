import 'package:isar/isar.dart';

import 'article_isar.dart';
import 'multimedia_isar.dart';

part 'section_isar.g.dart';

@collection
class SectionIsar {
  SectionIsar({
    required this.status,
    required this.copyright,
    required this.section,
    required this.lastUpdated,
    required this.numResults,
    required this.results,
  }) : id = section.hashCode;

  Id id;
  String status;
  String copyright;
  @Index(type: IndexType.value)
  String section;
  String lastUpdated;
  int numResults;
  List<ArticleIsar> results;
}