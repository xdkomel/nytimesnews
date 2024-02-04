import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/article.dart';

part 'filtered_stories_state.freezed.dart';

@freezed
class FilteredStoriesState with _$FilteredStoriesState {
  factory FilteredStoriesState.data({
    required Iterable<Article> articles,
  }) = _FilteredStoriesStateData;

  factory FilteredStoriesState.loading() = _FilteredStoriesStateLoading;
}
