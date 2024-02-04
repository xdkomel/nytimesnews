import 'package:isar/isar.dart';

import 'multimedia_isar.dart';

part 'article_isar.g.dart';

@embedded
class ArticleIsar {
  ArticleIsar({
    this.section,
    this.subsection,
    this.title,
    this.abstract,
    this.url,
    this.uri,
    this.byline,
    this.itemType,
    this.updatedDate,
    this.createdDate,
    this.publishedDate,
    this.materialTypeFacet,
    this.kicker,
    this.multimedia,
    this.shortUrl,
  });

  String? section;
  String? subsection;
  String? title;
  String? abstract;
  String? url;
  String? uri;
  String? byline;
  String? itemType;
  String? updatedDate;
  String? createdDate;
  String? publishedDate;
  String? materialTypeFacet;
  String? kicker;
  List<MultimediaIsar>? multimedia;
  String? shortUrl;
}
