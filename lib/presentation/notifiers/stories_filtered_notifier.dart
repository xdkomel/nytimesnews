import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/article.dart';
import '../state_models/filtered_stories_state.dart';

class StoriesFilteredNotifier extends Notifier<FilteredStoriesState> {
  @override
  FilteredStoriesState build() => FilteredStoriesState.loading();

  Future<void> filter(String query, Iterable<Article> articles) async {
    state = FilteredStoriesState.loading();
    if (query.isEmpty) {
      state = FilteredStoriesState.data(articles: articles);
      return;
    }
    final q = query.toLowerCase();
    state = FilteredStoriesState.data(
      articles: articles.where(
        (e) =>
            e.abstract.toLowerCase().contains(q) ||
            e.title.toLowerCase().contains(q),
      ),
    );
  }
}
