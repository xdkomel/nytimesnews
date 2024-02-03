// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multimedia.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Multimedia _$MultimediaFromJson(Map<String, dynamic> json) {
  return _Multimedia.fromJson(json);
}

/// @nodoc
mixin _$Multimedia {
  String get url => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get subtype => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;
  String get copyright => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultimediaCopyWith<Multimedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultimediaCopyWith<$Res> {
  factory $MultimediaCopyWith(
          Multimedia value, $Res Function(Multimedia) then) =
      _$MultimediaCopyWithImpl<$Res, Multimedia>;
  @useResult
  $Res call(
      {String url,
      String format,
      int height,
      int width,
      String type,
      String subtype,
      String caption,
      String copyright});
}

/// @nodoc
class _$MultimediaCopyWithImpl<$Res, $Val extends Multimedia>
    implements $MultimediaCopyWith<$Res> {
  _$MultimediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? format = null,
    Object? height = null,
    Object? width = null,
    Object? type = null,
    Object? subtype = null,
    Object? caption = null,
    Object? copyright = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: null == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultimediaImplCopyWith<$Res>
    implements $MultimediaCopyWith<$Res> {
  factory _$$MultimediaImplCopyWith(
          _$MultimediaImpl value, $Res Function(_$MultimediaImpl) then) =
      __$$MultimediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String format,
      int height,
      int width,
      String type,
      String subtype,
      String caption,
      String copyright});
}

/// @nodoc
class __$$MultimediaImplCopyWithImpl<$Res>
    extends _$MultimediaCopyWithImpl<$Res, _$MultimediaImpl>
    implements _$$MultimediaImplCopyWith<$Res> {
  __$$MultimediaImplCopyWithImpl(
      _$MultimediaImpl _value, $Res Function(_$MultimediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? format = null,
    Object? height = null,
    Object? width = null,
    Object? type = null,
    Object? subtype = null,
    Object? caption = null,
    Object? copyright = null,
  }) {
    return _then(_$MultimediaImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: null == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultimediaImpl implements _Multimedia {
  _$MultimediaImpl(
      {required this.url,
      required this.format,
      required this.height,
      required this.width,
      required this.type,
      required this.subtype,
      required this.caption,
      required this.copyright});

  factory _$MultimediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultimediaImplFromJson(json);

  @override
  final String url;
  @override
  final String format;
  @override
  final int height;
  @override
  final int width;
  @override
  final String type;
  @override
  final String subtype;
  @override
  final String caption;
  @override
  final String copyright;

  @override
  String toString() {
    return 'Multimedia(url: $url, format: $format, height: $height, width: $width, type: $type, subtype: $subtype, caption: $caption, copyright: $copyright)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultimediaImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subtype, subtype) || other.subtype == subtype) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, format, height, width, type,
      subtype, caption, copyright);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultimediaImplCopyWith<_$MultimediaImpl> get copyWith =>
      __$$MultimediaImplCopyWithImpl<_$MultimediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultimediaImplToJson(
      this,
    );
  }
}

abstract class _Multimedia implements Multimedia {
  factory _Multimedia(
      {required final String url,
      required final String format,
      required final int height,
      required final int width,
      required final String type,
      required final String subtype,
      required final String caption,
      required final String copyright}) = _$MultimediaImpl;

  factory _Multimedia.fromJson(Map<String, dynamic> json) =
      _$MultimediaImpl.fromJson;

  @override
  String get url;
  @override
  String get format;
  @override
  int get height;
  @override
  int get width;
  @override
  String get type;
  @override
  String get subtype;
  @override
  String get caption;
  @override
  String get copyright;
  @override
  @JsonKey(ignore: true)
  _$$MultimediaImplCopyWith<_$MultimediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
