import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/section.dart';
import 'top_stories_content_state.dart';

part 'top_stories_state.freezed.dart';

@freezed
class TopStoriesState with _$TopStoriesState {

  factory TopStoriesState({
    required String lastUpdated,
    required String category,
    required TopStoriesContentState content,
  }) = _TopStoriesState;
}