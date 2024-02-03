// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_stories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopStoriesState {
  String get lastUpdated => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  TopStoriesContentState get content => throw _privateConstructorUsedError;
  TopStoriesContentState? get filteredContent =>
      throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopStoriesStateCopyWith<TopStoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopStoriesStateCopyWith<$Res> {
  factory $TopStoriesStateCopyWith(
          TopStoriesState value, $Res Function(TopStoriesState) then) =
      _$TopStoriesStateCopyWithImpl<$Res, TopStoriesState>;
  @useResult
  $Res call(
      {String lastUpdated,
      String category,
      TopStoriesContentState content,
      TopStoriesContentState? filteredContent,
      String? searchQuery});

  $TopStoriesContentStateCopyWith<$Res> get content;
  $TopStoriesContentStateCopyWith<$Res>? get filteredContent;
}

/// @nodoc
class _$TopStoriesStateCopyWithImpl<$Res, $Val extends TopStoriesState>
    implements $TopStoriesStateCopyWith<$Res> {
  _$TopStoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = null,
    Object? category = null,
    Object? content = null,
    Object? filteredContent = freezed,
    Object? searchQuery = freezed,
  }) {
    return _then(_value.copyWith(
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as TopStoriesContentState,
      filteredContent: freezed == filteredContent
          ? _value.filteredContent
          : filteredContent // ignore: cast_nullable_to_non_nullable
              as TopStoriesContentState?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopStoriesContentStateCopyWith<$Res> get content {
    return $TopStoriesContentStateCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TopStoriesContentStateCopyWith<$Res>? get filteredContent {
    if (_value.filteredContent == null) {
      return null;
    }

    return $TopStoriesContentStateCopyWith<$Res>(_value.filteredContent!,
        (value) {
      return _then(_value.copyWith(filteredContent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopStoriesStateImplCopyWith<$Res>
    implements $TopStoriesStateCopyWith<$Res> {
  factory _$$TopStoriesStateImplCopyWith(_$TopStoriesStateImpl value,
          $Res Function(_$TopStoriesStateImpl) then) =
      __$$TopStoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lastUpdated,
      String category,
      TopStoriesContentState content,
      TopStoriesContentState? filteredContent,
      String? searchQuery});

  @override
  $TopStoriesContentStateCopyWith<$Res> get content;
  @override
  $TopStoriesContentStateCopyWith<$Res>? get filteredContent;
}

/// @nodoc
class __$$TopStoriesStateImplCopyWithImpl<$Res>
    extends _$TopStoriesStateCopyWithImpl<$Res, _$TopStoriesStateImpl>
    implements _$$TopStoriesStateImplCopyWith<$Res> {
  __$$TopStoriesStateImplCopyWithImpl(
      _$TopStoriesStateImpl _value, $Res Function(_$TopStoriesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = null,
    Object? category = null,
    Object? content = null,
    Object? filteredContent = freezed,
    Object? searchQuery = freezed,
  }) {
    return _then(_$TopStoriesStateImpl(
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as TopStoriesContentState,
      filteredContent: freezed == filteredContent
          ? _value.filteredContent
          : filteredContent // ignore: cast_nullable_to_non_nullable
              as TopStoriesContentState?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TopStoriesStateImpl implements _TopStoriesState {
  _$TopStoriesStateImpl(
      {required this.lastUpdated,
      required this.category,
      required this.content,
      this.filteredContent,
      this.searchQuery});

  @override
  final String lastUpdated;
  @override
  final String category;
  @override
  final TopStoriesContentState content;
  @override
  final TopStoriesContentState? filteredContent;
  @override
  final String? searchQuery;

  @override
  String toString() {
    return 'TopStoriesState(lastUpdated: $lastUpdated, category: $category, content: $content, filteredContent: $filteredContent, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopStoriesStateImpl &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.filteredContent, filteredContent) ||
                other.filteredContent == filteredContent) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastUpdated, category, content,
      filteredContent, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopStoriesStateImplCopyWith<_$TopStoriesStateImpl> get copyWith =>
      __$$TopStoriesStateImplCopyWithImpl<_$TopStoriesStateImpl>(
          this, _$identity);
}

abstract class _TopStoriesState implements TopStoriesState {
  factory _TopStoriesState(
      {required final String lastUpdated,
      required final String category,
      required final TopStoriesContentState content,
      final TopStoriesContentState? filteredContent,
      final String? searchQuery}) = _$TopStoriesStateImpl;

  @override
  String get lastUpdated;
  @override
  String get category;
  @override
  TopStoriesContentState get content;
  @override
  TopStoriesContentState? get filteredContent;
  @override
  String? get searchQuery;
  @override
  @JsonKey(ignore: true)
  _$$TopStoriesStateImplCopyWith<_$TopStoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
