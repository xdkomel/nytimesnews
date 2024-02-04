// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filtered_stories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilteredStoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Article> articles) data,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Iterable<Article> articles)? data,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Article> articles)? data,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilteredStoriesStateData value) data,
    required TResult Function(_FilteredStoriesStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilteredStoriesStateData value)? data,
    TResult? Function(_FilteredStoriesStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilteredStoriesStateData value)? data,
    TResult Function(_FilteredStoriesStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredStoriesStateCopyWith<$Res> {
  factory $FilteredStoriesStateCopyWith(FilteredStoriesState value,
          $Res Function(FilteredStoriesState) then) =
      _$FilteredStoriesStateCopyWithImpl<$Res, FilteredStoriesState>;
}

/// @nodoc
class _$FilteredStoriesStateCopyWithImpl<$Res,
        $Val extends FilteredStoriesState>
    implements $FilteredStoriesStateCopyWith<$Res> {
  _$FilteredStoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FilteredStoriesStateDataImplCopyWith<$Res> {
  factory _$$FilteredStoriesStateDataImplCopyWith(
          _$FilteredStoriesStateDataImpl value,
          $Res Function(_$FilteredStoriesStateDataImpl) then) =
      __$$FilteredStoriesStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Iterable<Article> articles});
}

/// @nodoc
class __$$FilteredStoriesStateDataImplCopyWithImpl<$Res>
    extends _$FilteredStoriesStateCopyWithImpl<$Res,
        _$FilteredStoriesStateDataImpl>
    implements _$$FilteredStoriesStateDataImplCopyWith<$Res> {
  __$$FilteredStoriesStateDataImplCopyWithImpl(
      _$FilteredStoriesStateDataImpl _value,
      $Res Function(_$FilteredStoriesStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$FilteredStoriesStateDataImpl(
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as Iterable<Article>,
    ));
  }
}

/// @nodoc

class _$FilteredStoriesStateDataImpl implements _FilteredStoriesStateData {
  _$FilteredStoriesStateDataImpl({required this.articles});

  @override
  final Iterable<Article> articles;

  @override
  String toString() {
    return 'FilteredStoriesState.data(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteredStoriesStateDataImpl &&
            const DeepCollectionEquality().equals(other.articles, articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilteredStoriesStateDataImplCopyWith<_$FilteredStoriesStateDataImpl>
      get copyWith => __$$FilteredStoriesStateDataImplCopyWithImpl<
          _$FilteredStoriesStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Article> articles) data,
    required TResult Function() loading,
  }) {
    return data(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Iterable<Article> articles)? data,
    TResult? Function()? loading,
  }) {
    return data?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Article> articles)? data,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilteredStoriesStateData value) data,
    required TResult Function(_FilteredStoriesStateLoading value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilteredStoriesStateData value)? data,
    TResult? Function(_FilteredStoriesStateLoading value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilteredStoriesStateData value)? data,
    TResult Function(_FilteredStoriesStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _FilteredStoriesStateData implements FilteredStoriesState {
  factory _FilteredStoriesStateData(
          {required final Iterable<Article> articles}) =
      _$FilteredStoriesStateDataImpl;

  Iterable<Article> get articles;
  @JsonKey(ignore: true)
  _$$FilteredStoriesStateDataImplCopyWith<_$FilteredStoriesStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilteredStoriesStateLoadingImplCopyWith<$Res> {
  factory _$$FilteredStoriesStateLoadingImplCopyWith(
          _$FilteredStoriesStateLoadingImpl value,
          $Res Function(_$FilteredStoriesStateLoadingImpl) then) =
      __$$FilteredStoriesStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilteredStoriesStateLoadingImplCopyWithImpl<$Res>
    extends _$FilteredStoriesStateCopyWithImpl<$Res,
        _$FilteredStoriesStateLoadingImpl>
    implements _$$FilteredStoriesStateLoadingImplCopyWith<$Res> {
  __$$FilteredStoriesStateLoadingImplCopyWithImpl(
      _$FilteredStoriesStateLoadingImpl _value,
      $Res Function(_$FilteredStoriesStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilteredStoriesStateLoadingImpl
    implements _FilteredStoriesStateLoading {
  _$FilteredStoriesStateLoadingImpl();

  @override
  String toString() {
    return 'FilteredStoriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteredStoriesStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Article> articles) data,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Iterable<Article> articles)? data,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Article> articles)? data,
    TResult Function()? loading,
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
    required TResult Function(_FilteredStoriesStateData value) data,
    required TResult Function(_FilteredStoriesStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilteredStoriesStateData value)? data,
    TResult? Function(_FilteredStoriesStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilteredStoriesStateData value)? data,
    TResult Function(_FilteredStoriesStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FilteredStoriesStateLoading implements FilteredStoriesState {
  factory _FilteredStoriesStateLoading() = _$FilteredStoriesStateLoadingImpl;
}
