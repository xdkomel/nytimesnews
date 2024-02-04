import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../notifiers/search_field_in_focus_notifier.dart';
import '../../../notifiers/search_query_notifier.dart';
import '../../../notifiers/stories_category_filter_notifier.dart';
import '../../../notifiers/stories_loading_notifier.dart';
import '../../../state_models/loading_stories_state.dart';
import 'category_bubble.dart';
import 'persistent_header.dart';
import 'search_field.dart';

class TopStoriesSearchTabs extends StatelessWidget {
  final NotifierProvider<SearchFieldInFocusNotifier, bool> focusNotifier;
  final NotifierProvider<SearchQueryNotifier, String> searchQueryNotifier;
  final NotifierProvider<StoriesLoadingNotifier, LoadingStoriesState>
      loadingNotifier;
  final NotifierProvider<StoriesCategoryFilterNotifier, ISet<String>>
      categoryFilterNotifier;
  final Iterable<String> categories;
  final String selectedCategory;

  const TopStoriesSearchTabs({
    super.key,
    required this.selectedCategory,
    required this.categories,
    required this.focusNotifier,
    required this.loadingNotifier,
    required this.searchQueryNotifier,
    required this.categoryFilterNotifier,
  });

  @override
  Widget build(BuildContext context) => SliverPersistentHeader(
        pinned: true,
        delegate: PersistentHeader(
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SearchField(
                  focusNotifier: focusNotifier,
                  searchQueryNotifier: searchQueryNotifier,
                  categoryFilterNotifier: categoryFilterNotifier,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 4),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ...categories
                          .map(
                            (name) => CategoryBubble(
                              name: name,
                              isSelected: name == selectedCategory,
                              loadingNotifier: loadingNotifier,
                            ),
                          )
                          .expand(
                            (element) => [
                              const SizedBox(width: 16),
                              element,
                            ],
                          ),
                      const SizedBox(width: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
