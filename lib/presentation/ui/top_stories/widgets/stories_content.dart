import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/constants.dart';
import '../../../notifiers/search_query_notifier.dart';
import '../../../notifiers/stories_category_filter_notifier.dart';
import '../../../notifiers/stories_filtered_notifier.dart';
import '../../../notifiers/stories_loading_notifier.dart';
import '../../../state_models/filtered_stories_state.dart';
import '../../../state_models/loading_stories_state.dart';
import '../../common/loading_indicator.dart';
import 'stories_list.dart';

class StoriesContent extends ConsumerWidget {
  final NotifierProvider<StoriesLoadingNotifier, LoadingStoriesState>
      loadingNotifier;
  final NotifierProvider<StoriesFilteredNotifier, FilteredStoriesState>
      filteredNotifier;
  final NotifierProvider<SearchQueryNotifier, String> queryNotifier;
  final NotifierProvider<StoriesCategoryFilterNotifier, ISet<String>>
      categoryFilter;
  final String categoryName;

  const StoriesContent({
    super.key,
    required this.categoryName,
    required this.loadingNotifier,
    required this.filteredNotifier,
    required this.queryNotifier,
    required this.categoryFilter,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loadingNotifier).content;
    return state.map(
      data: (data) => StoriesList(
        showSection: categoryName == Constants.defaultSection,
        data: data,
        filteredNotifier: filteredNotifier,
        queryNotifier: queryNotifier,
        categoryFilter: categoryFilter,
      ),
      loading: (_) => const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: LoadingIndicator(),
          ),
        ),
      ),
      error: (message) => SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  message.errorMessage,
                  style: const TextStyle(
                    color: Constants.blackPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                IconButton(
                  onPressed: ref.read(loadingNotifier.notifier).loadData,
                  icon: const Icon(
                    Icons.refresh,
                    size: 48,
                    color: Constants.purplePrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
