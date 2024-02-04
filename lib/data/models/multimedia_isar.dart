import 'package:isar/isar.dart';

part 'multimedia_isar.g.dart';

@embedded
class MultimediaIsar {
  MultimediaIsar({
    this.url,
    this.format,
    this.height,
    this.width,
    this.type,
    this.subtype,
    this.caption,
    this.copyright,
  });

  String? url;
  String? format;
  int? height;
  int? width;
  String? type;
  String? subtype;
  String? caption;
  String? copyright;
}
