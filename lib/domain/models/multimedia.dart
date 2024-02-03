import 'package:freezed_annotation/freezed_annotation.dart';

part 'multimedia.freezed.dart';
part 'multimedia.g.dart';

@freezed
class Multimedia with _$Multimedia {

  factory Multimedia({
    required String url,
    required String format,
    required int height,
    required int width,
    required String type,
    required String subtype,
    required String caption,
    required String copyright,
  }) = _Multimedia;

  factory Multimedia.fromJson(Map<String, dynamic> json) => _$MultimediaFromJson(json);
}