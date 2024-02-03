import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/section.dart';

part 'top_stories_content_state.freezed.dart';

@freezed
class TopStoriesContentState with _$TopStoriesContentState {

  factory TopStoriesContentState.data({
    required Section section,
  }) = TopStoriesContentStateData;

  factory TopStoriesContentState.loading() = TopStoriesContentStateLoading;
}