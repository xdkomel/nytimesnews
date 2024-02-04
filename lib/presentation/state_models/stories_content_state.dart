import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/section.dart';

part 'stories_content_state.freezed.dart';

@freezed
class StoriesContentState with _$StoriesContentState {

  factory StoriesContentState.data({
    required Section section,
  }) = TopStoriesContentStateData;

  factory StoriesContentState.loading() = TopStoriesContentStateLoading;

  factory StoriesContentState.error({
    required String errorMessage,
  }) = TopStoriesContentStateError;
}