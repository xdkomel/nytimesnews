// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_stories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadingStoriesState {
  String get lastUpdated => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  StoriesContentState get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadingStoriesStateCopyWith<LoadingStoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStoriesStateCopyWith<$Res> {
  factory $LoadingStoriesStateCopyWith(
          LoadingStoriesState value, $Res Function(LoadingStoriesState) then) =
      _$LoadingStoriesStateCopyWithImpl<$Res, LoadingStoriesState>;
  @useResult
  $Res call({String lastUpdated, String category, StoriesContentState content});

  $StoriesContentStateCopyWith<$Res> get content;
}

/// @nodoc
class _$LoadingStoriesStateCopyWithImpl<$Res, $Val extends LoadingStoriesState>
    implements $LoadingStoriesStateCopyWith<$Res> {
  _$LoadingStoriesStateCopyWithImpl(this._value, this._then);

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
              as StoriesContentState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoriesContentStateCopyWith<$Res> get content {
    return $StoriesContentStateCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingStoriesStateImplCopyWith<$Res>
    implements $LoadingStoriesStateCopyWith<$Res> {
  factory _$$LoadingStoriesStateImplCopyWith(_$LoadingStoriesStateImpl value,
          $Res Function(_$LoadingStoriesStateImpl) then) =
      __$$LoadingStoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lastUpdated, String category, StoriesContentState content});

  @override
  $StoriesContentStateCopyWith<$Res> get content;
}

/// @nodoc
class __$$LoadingStoriesStateImplCopyWithImpl<$Res>
    extends _$LoadingStoriesStateCopyWithImpl<$Res, _$LoadingStoriesStateImpl>
    implements _$$LoadingStoriesStateImplCopyWith<$Res> {
  __$$LoadingStoriesStateImplCopyWithImpl(_$LoadingStoriesStateImpl _value,
      $Res Function(_$LoadingStoriesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = null,
    Object? category = null,
    Object? content = null,
  }) {
    return _then(_$LoadingStoriesStateImpl(
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
              as StoriesContentState,
    ));
  }
}

/// @nodoc

class _$LoadingStoriesStateImpl implements _LoadingStoriesState {
  _$LoadingStoriesStateImpl(
      {required this.lastUpdated,
      required this.category,
      required this.content});

  @override
  final String lastUpdated;
  @override
  final String category;
  @override
  final StoriesContentState content;

  @override
  String toString() {
    return 'LoadingStoriesState(lastUpdated: $lastUpdated, category: $category, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStoriesStateImpl &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastUpdated, category, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStoriesStateImplCopyWith<_$LoadingStoriesStateImpl> get copyWith =>
      __$$LoadingStoriesStateImplCopyWithImpl<_$LoadingStoriesStateImpl>(
          this, _$identity);
}

abstract class _LoadingStoriesState implements LoadingStoriesState {
  factory _LoadingStoriesState(
      {required final String lastUpdated,
      required final String category,
      required final StoriesContentState content}) = _$LoadingStoriesStateImpl;

  @override
  String get lastUpdated;
  @override
  String get category;
  @override
  StoriesContentState get content;
  @override
  @JsonKey(ignore: true)
  _$$LoadingStoriesStateImplCopyWith<_$LoadingStoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
