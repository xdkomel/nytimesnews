import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../application/state_providers.dart';
import '../../../constants/constants.dart';
import '../top_stories/top_stories.dart';

class BookmarkedStories extends ConsumerWidget {
  const BookmarkedStories({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(StateProviders.bookmarkedCategories);
    if (categories.isEmpty) {
      return const Center(
        child: Text(
          Constants.noFavourites,
          style: TextStyle(
            color: Constants.blackPrimary,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }
    return TopStories(
      title: 'Bookmarked Sections',
      categories: categories.toIterable(),
      loadingNotifier: StateProviders.bookmarkedLoadingStories,
      focusNotifier: StateProviders.bookmarkedSearchFieldInFocus,
      searchQueryNotifier: StateProviders.bookmarkedSearchQuery,
      filterNotifier: StateProviders.bookmarkedFilteredStories,
      searchInFocusNotifier: StateProviders.bookmarkedSearchFieldInFocus,
    );
  }
}
