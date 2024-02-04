// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_content_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoriesContentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Section section) data,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Section section)? data,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Section section)? data,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopStoriesContentStateData value) data,
    required TResult Function(TopStoriesContentStateLoading value) loading,
    required TResult Function(TopStoriesContentStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopStoriesContentStateData value)? data,
    TResult? Function(TopStoriesContentStateLoading value)? loading,
    TResult? Function(TopStoriesContentStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopStoriesContentStateData value)? data,
    TResult Function(TopStoriesContentStateLoading value)? loading,
    TResult Function(TopStoriesContentStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesContentStateCopyWith<$Res> {
  factory $StoriesContentStateCopyWith(
          StoriesContentState value, $Res Function(StoriesContentState) then) =
      _$StoriesContentStateCopyWithImpl<$Res, StoriesContentState>;
}

/// @nodoc
class _$StoriesContentStateCopyWithImpl<$Res, $Val extends StoriesContentState>
    implements $StoriesContentStateCopyWith<$Res> {
  _$StoriesContentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TopStoriesContentStateDataImplCopyWith<$Res> {
  factory _$$TopStoriesContentStateDataImplCopyWith(
          _$TopStoriesContentStateDataImpl value,
          $Res Function(_$TopStoriesContentStateDataImpl) then) =
      __$$TopStoriesContentStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Section section});

  $SectionCopyWith<$Res> get section;
}

/// @nodoc
class __$$TopStoriesContentStateDataImplCopyWithImpl<$Res>
    extends _$StoriesContentStateCopyWithImpl<$Res,
        _$TopStoriesContentStateDataImpl>
    implements _$$TopStoriesContentStateDataImplCopyWith<$Res> {
  __$$TopStoriesContentStateDataImplCopyWithImpl(
      _$TopStoriesContentStateDataImpl _value,
      $Res Function(_$TopStoriesContentStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
  }) {
    return _then(_$TopStoriesContentStateDataImpl(
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as Section,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SectionCopyWith<$Res> get section {
    return $SectionCopyWith<$Res>(_value.section, (value) {
      return _then(_value.copyWith(section: value));
    });
  }
}

/// @nodoc

class _$TopStoriesContentStateDataImpl implements TopStoriesContentStateData {
  _$TopStoriesContentStateDataImpl({required this.section});

  @override
  final Section section;

  @override
  String toString() {
    return 'StoriesContentState.data(section: $section)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopStoriesContentStateDataImpl &&
            (identical(other.section, section) || other.section == section));
  }

  @override
  int get hashCode => Object.hash(runtimeType, section);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopStoriesContentStateDataImplCopyWith<_$TopStoriesContentStateDataImpl>
      get copyWith => __$$TopStoriesContentStateDataImplCopyWithImpl<
          _$TopStoriesContentStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Section section) data,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return data(section);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Section section)? data,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return data?.call(section);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Section section)? data,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(section);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopStoriesContentStateData value) data,
    required TResult Function(TopStoriesContentStateLoading value) loading,
    required TResult Function(TopStoriesContentStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopStoriesContentStateData value)? data,
    TResult? Function(TopStoriesContentStateLoading value)? loading,
    TResult? Function(TopStoriesContentStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopStoriesContentStateData value)? data,
    TResult Function(TopStoriesContentStateLoading value)? loading,
    TResult Function(TopStoriesContentStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class TopStoriesContentStateData implements StoriesContentState {
  factory TopStoriesContentStateData({required final Section section}) =
      _$TopStoriesContentStateDataImpl;

  Section get section;
  @JsonKey(ignore: true)
  _$$TopStoriesContentStateDataImplCopyWith<_$TopStoriesContentStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopStoriesContentStateLoadingImplCopyWith<$Res> {
  factory _$$TopStoriesContentStateLoadingImplCopyWith(
          _$TopStoriesContentStateLoadingImpl value,
          $Res Function(_$TopStoriesContentStateLoadingImpl) then) =
      __$$TopStoriesContentStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopStoriesContentStateLoadingImplCopyWithImpl<$Res>
    extends _$StoriesContentStateCopyWithImpl<$Res,
        _$TopStoriesContentStateLoadingImpl>
    implements _$$TopStoriesContentStateLoadingImplCopyWith<$Res> {
  __$$TopStoriesContentStateLoadingImplCopyWithImpl(
      _$TopStoriesContentStateLoadingImpl _value,
      $Res Function(_$TopStoriesContentStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TopStoriesContentStateLoadingImpl
    implements TopStoriesContentStateLoading {
  _$TopStoriesContentStateLoadingImpl();

  @override
  String toString() {
    return 'StoriesContentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopStoriesContentStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Section section) data,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Section section)? data,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Section section)? data,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopStoriesContentStateData value) data,
    required TResult Function(TopStoriesContentStateLoading value) loading,
    required TResult Function(TopStoriesContentStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopStoriesContentStateData value)? data,
    TResult? Function(TopStoriesContentStateLoading value)? loading,
    TResult? Function(TopStoriesContentStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopStoriesContentStateData value)? data,
    TResult Function(TopStoriesContentStateLoading value)? loading,
    TResult Function(TopStoriesContentStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TopStoriesContentStateLoading implements StoriesContentState {
  factory TopStoriesContentStateLoading() = _$TopStoriesContentStateLoadingImpl;
}

/// @nodoc
abstract class _$$TopStoriesContentStateErrorImplCopyWith<$Res> {
  factory _$$TopStoriesContentStateErrorImplCopyWith(
          _$TopStoriesContentStateErrorImpl value,
          $Res Function(_$TopStoriesContentStateErrorImpl) then) =
      __$$TopStoriesContentStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$TopStoriesContentStateErrorImplCopyWithImpl<$Res>
    extends _$StoriesContentStateCopyWithImpl<$Res,
        _$TopStoriesContentStateErrorImpl>
    implements _$$TopStoriesContentStateErrorImplCopyWith<$Res> {
  __$$TopStoriesContentStateErrorImplCopyWithImpl(
      _$TopStoriesContentStateErrorImpl _value,
      $Res Function(_$TopStoriesContentStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$TopStoriesContentStateErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TopStoriesContentStateErrorImpl implements TopStoriesContentStateError {
  _$TopStoriesContentStateErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'StoriesContentState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopStoriesContentStateErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopStoriesContentStateErrorImplCopyWith<_$TopStoriesContentStateErrorImpl>
      get copyWith => __$$TopStoriesContentStateErrorImplCopyWithImpl<
          _$TopStoriesContentStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Section section) data,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Section section)? data,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Section section)? data,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopStoriesContentStateData value) data,
    required TResult Function(TopStoriesContentStateLoading value) loading,
    required TResult Function(TopStoriesContentStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopStoriesContentStateData value)? data,
    TResult? Function(TopStoriesContentStateLoading value)? loading,
    TResult? Function(TopStoriesContentStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopStoriesContentStateData value)? data,
    TResult Function(TopStoriesContentStateLoading value)? loading,
    TResult Function(TopStoriesContentStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TopStoriesContentStateError implements StoriesContentState {
  factory TopStoriesContentStateError({required final String errorMessage}) =
      _$TopStoriesContentStateErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$TopStoriesContentStateErrorImplCopyWith<_$TopStoriesContentStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
