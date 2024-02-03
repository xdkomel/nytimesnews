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
      {String lastUpdated, String category, TopStoriesContentState content});

  $TopStoriesContentStateCopyWith<$Res> get content;
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopStoriesContentStateCopyWith<$Res> get content {
    return $TopStoriesContentStateCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
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
      {String lastUpdated, String category, TopStoriesContentState content});

  @override
  $TopStoriesContentStateCopyWith<$Res> get content;
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
    ));
  }
}

/// @nodoc

class _$TopStoriesStateImpl implements _TopStoriesState {
  _$TopStoriesStateImpl(
      {required this.lastUpdated,
      required this.category,
      required this.content});

  @override
  final String lastUpdated;
  @override
  final String category;
  @override
  final TopStoriesContentState content;

  @override
  String toString() {
    return 'TopStoriesState(lastUpdated: $lastUpdated, category: $category, content: $content)';
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
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastUpdated, category, content);

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
      required final TopStoriesContentState content}) = _$TopStoriesStateImpl;

  @override
  String get lastUpdated;
  @override
  String get category;
  @override
  TopStoriesContentState get content;
  @override
  @JsonKey(ignore: true)
  _$$TopStoriesStateImplCopyWith<_$TopStoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
