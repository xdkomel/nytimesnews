import 'package:freezed_annotation/freezed_annotation.dart';

import 'stories_content_state.dart';

part 'loading_stories_state.freezed.dart';

@freezed
class LoadingStoriesState with _$LoadingStoriesState {

  factory LoadingStoriesState({
    required String lastUpdated,
    required String category,
    required StoriesContentState content,
  }) = _LoadingStoriesState;
}