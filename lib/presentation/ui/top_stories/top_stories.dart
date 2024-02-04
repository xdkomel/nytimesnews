import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../application/providers.dart';
import '../../../constants/constants.dart';
import '../../notifiers/search_field_in_focus_notifier.dart';
import '../../notifiers/search_query_notifier.dart';
import '../../notifiers/stories_filtered_notifier.dart';
import '../../notifiers/stories_loading_notifier.dart';
import '../../state_models/filtered_stories_state.dart';
import '../../state_models/loading_stories_state.dart';
import 'widgets/stories_content.dart';
import 'widgets/top_stories_header.dart';
import 'widgets/top_stories_search_tabs.dart';

class TopStories extends ConsumerStatefulWidget {
  final String title;
  final Iterable<String> categories;
  final NotifierProvider<StoriesLoadingNotifier, LoadingStoriesState>
      loadingNotifier;
  final NotifierProvider<SearchFieldInFocusNotifier, bool> focusNotifier;
  final NotifierProvider<SearchQueryNotifier, String> searchQueryNotifier;
  final NotifierProvider<StoriesFilteredNotifier, FilteredStoriesState>
      filterNotifier;
  final NotifierProvider<SearchFieldInFocusNotifier, bool>
      searchInFocusNotifier;

  const TopStories({
    required this.title,
    required this.categories,
    required this.loadingNotifier,
    required this.focusNotifier,
    required this.searchQueryNotifier,
    required this.filterNotifier,
    required this.searchInFocusNotifier,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TopStoriesState();
}

class _TopStoriesState extends ConsumerState<TopStories> {
  Timer? _timer;

  @override
  void initState() {
    final firstCategory = widget.categories.firstOrNull;
    if (firstCategory != null) {
      _timer = Timer.periodic(const Duration(minutes: 1), (_) {
        ref.read(Providers.logger).d('Perform the regular 1 minute update');
        ref.read(widget.loadingNotifier.notifier).loadData(loadImplicitly: true);
      });
      SchedulerBinding.instance.addPostFrameCallback((_) {
        ref.read(widget.loadingNotifier.notifier).setCategory(firstCategory);
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    ref.read(Providers.logger).d('Dispose the timer');
    _timer?.cancel();
    super.dispose();
  }

  String formatLastUpdatedMessage(String message) {
    final lastUpdated = DateTime.tryParse(message);
    if (lastUpdated == null) {
      return message;
    }
    final today = DateTime.now();
    if (DateTime(lastUpdated.year, lastUpdated.month, lastUpdated.day) ==
        DateTime(today.year, today.month, today.day)) {
      return 'Last updated at ${DateFormat('HH:mm').format(lastUpdated)}';
    }
    if (DateTime(lastUpdated.year, lastUpdated.month, lastUpdated.day) ==
        DateTime(today.year, today.month, today.day - 1)) {
      return 'Last updated yesterday at ${DateFormat('HH:mm').format(lastUpdated)}';
    }
    return "Last updated ${DateFormat('dd MMMM yyyy, HH:mm').format(lastUpdated)}";
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(widget.loadingNotifier);
    final lastUpdatedMessage = formatLastUpdatedMessage(state.lastUpdated);
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          TopStoriesHeader(
            lastUpdatedMessage: lastUpdatedMessage,
            title: widget.title,
          ),
          TopStoriesSearchTabs(
            selectedCategory: state.category,
            categories: widget.categories,
            focusNotifier: widget.focusNotifier,
            loadingNotifier: widget.loadingNotifier,
            searchQueryNotifier: widget.searchQueryNotifier,
          ),
          SliverAnimatedOpacity(
            opacity: ref.watch(widget.searchInFocusNotifier) ? 0.5 : 1,
            duration: Constants.duration500,
            sliver: SliverIgnorePointer(
              ignoring: ref.watch(widget.searchInFocusNotifier),
              sliver: StoriesContent(
                categoryName: state.category,
                loadingNotifier: widget.loadingNotifier,
                filteredNotifier: widget.filterNotifier,
                queryNotifier: widget.searchQueryNotifier,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
