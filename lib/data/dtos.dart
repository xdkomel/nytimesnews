import '../domain/models/article.dart';
import '../domain/models/multimedia.dart';
import '../domain/models/section.dart';
import 'models/article_isar.dart';
import 'models/multimedia_isar.dart';
import 'models/section_isar.dart';

extension SectionToIsar on Section {
  SectionIsar toIsar([String? customSection]) => SectionIsar(
        status: status,
        copyright: copyright,
        section: customSection ?? section,
        lastUpdated: lastUpdated,
        numResults: numResults,
        results: results
            .take(40)
            .map(
              (e) => e.toIsar(),
            )
            .toList(growable: false),
      );
}

extension SectionIsarToSection on SectionIsar {
  Section toSection() => Section(
        status: status,
        copyright: copyright,
        section: section,
        lastUpdated: lastUpdated,
        numResults: numResults,
        results:
            results.map((e) => e.toArticle()).whereType<Article>().toList(),
      );
}

extension ArticleToIsar on Article {
  ArticleIsar toIsar() => ArticleIsar(
        section: section,
        subsection: subsection,
        title: title,
        abstract: abstract,
        url: url,
        uri: uri,
        byline: byline,
        itemType: itemType,
        updatedDate: updatedDate,
        createdDate: createdDate,
        publishedDate: publishedDate,
        materialTypeFacet: materialTypeFacet,
        kicker: kicker,
        multimedia: multimedia
            ?.take(1)
            .map(
              (e) => e.toIsar(),
            )
            .toList(growable: false),
        shortUrl: shortUrl,
      );
}

extension ArticleIsarToArticle on ArticleIsar {
  Article? toArticle() {
    if (section == null ||
        subsection == null ||
        title == null ||
        abstract == null ||
        url == null ||
        uri == null ||
        byline == null ||
        itemType == null ||
        updatedDate == null ||
        createdDate == null ||
        publishedDate == null ||
        materialTypeFacet == null ||
        kicker == null ||
        shortUrl == null) {
      return null;
    }
    return Article(
      section: section!,
      subsection: subsection!,
      title: title!,
      abstract: abstract!,
      url: url!,
      uri: uri!,
      byline: byline!,
      itemType: itemType!,
      updatedDate: updatedDate!,
      createdDate: createdDate!,
      publishedDate: publishedDate!,
      materialTypeFacet: materialTypeFacet!,
      kicker: kicker!,
      desFacet: [],
      perFacet: [],
      geoFacet: [],
      multimedia: multimedia
          ?.map((e) => e.toMultimedia())
          .whereType<Multimedia>()
          .toList(),
      shortUrl: shortUrl!,
    );
  }
}

extension MultimediaToIsar on Multimedia {
  MultimediaIsar toIsar() => MultimediaIsar(
        url: url,
        format: format,
        height: height,
        width: width,
        type: type,
        subtype: subtype,
        caption: caption,
        copyright: copyright,
      );
}

extension MultimediaIsarToMultimedia on MultimediaIsar {
  Multimedia? toMultimedia() {
    if (url == null ||
        format == null ||
        height == null ||
        width == null ||
        type == null ||
        subtype == null ||
        caption == null ||
        copyright == null) {
      return null;
    }
    return Multimedia(
      url: url!,
      format: format!,
      height: height!,
      width: width!,
      type: type!,
      subtype: subtype!,
      caption: caption!,
      copyright: copyright!,
    );
  }
}
