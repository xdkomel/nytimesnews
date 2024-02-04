import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/notifiers/bookmarked_categories_notifier.dart';
import '../presentation/notifiers/search_field_in_focus_notifier.dart';
import '../presentation/notifiers/search_query_notifier.dart';
import '../presentation/notifiers/stories_filtered_notifier.dart';
import '../presentation/notifiers/stories_loading_notifier.dart';
import '../presentation/state_models/filtered_stories_state.dart';
import '../presentation/state_models/loading_stories_state.dart';

abstract class StateProviders {
  // Homepage
  static final homepageLoadingStories =
      NotifierProvider<StoriesLoadingNotifier, LoadingStoriesState>(
    () => StoriesLoadingNotifier(),
  );
  static final homepageFilteredStories =
      NotifierProvider<StoriesFilteredNotifier, FilteredStoriesState>(
    () => StoriesFilteredNotifier(),
  );
  static final homepageSearchFieldInFocus =
      NotifierProvider<SearchFieldInFocusNotifier, bool>(
    () => SearchFieldInFocusNotifier(),
  );
  static final homepageSearchQuery =
      NotifierProvider<SearchQueryNotifier, String>(
    () => SearchQueryNotifier(),
  );

  // Bookmarked
  static final bookmarkedCategories =
      NotifierProvider<BookmarkedCategoriesNotifier, ISet<String>>(
    () => BookmarkedCategoriesNotifier(),
  );
  static final bookmarkedLoadingStories =
      NotifierProvider<StoriesLoadingNotifier, LoadingStoriesState>(
    () => StoriesLoadingNotifier(),
  );
  static final bookmarkedFilteredStories =
      NotifierProvider<StoriesFilteredNotifier, FilteredStoriesState>(
    () => StoriesFilteredNotifier(),
  );
  static final bookmarkedSearchFieldInFocus =
      NotifierProvider<SearchFieldInFocusNotifier, bool>(
    () => SearchFieldInFocusNotifier(),
  );
  static final bookmarkedSearchQuery =
      NotifierProvider<SearchQueryNotifier, String>(
    () => SearchQueryNotifier(),
  );
}
