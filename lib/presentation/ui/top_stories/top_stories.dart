import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../application/state_providers.dart';
import '../../../constants/constants.dart';
import '../../../domain/models/article.dart';
import 'widgets/stories_list.dart';
import 'widgets/top_stories_header.dart';
import 'widgets/top_stories_search_tabs.dart';

class TopStories extends ConsumerStatefulWidget {
  const TopStories({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TopStoriesState();
}

class _TopStoriesState extends ConsumerState<TopStories> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(StateProviders.topStoriesStateProvider.notifier).loadData();
    });

    super.initState();
  }

  bool matchesQuery(String? query, Article article) {
    if (query == null) {
      return true;
    }
    return article.title.toLowerCase().contains(query) ||
        article.abstract.toLowerCase().contains(query);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(StateProviders.topStoriesStateProvider);
    final lastUpdated = DateTime.tryParse(state.lastUpdated);
    final lastUpdatedMessage = lastUpdated == null
        ? state.lastUpdated
        : "Last updated ${DateFormat('dd-MM-yyyy HH:mm').format(lastUpdated)}";
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          TopStoriesHeader(lastUpdatedMessage: lastUpdatedMessage),
          TopStoriesSearchTabs(category: state.category),
          SliverAnimatedOpacity(
            opacity: ref.watch(StateProviders.isSearchInFocus) ? 0.5 : 1,
            duration: Constants.duration500,
            sliver: SliverIgnorePointer(
              ignoring: ref.watch(StateProviders.isSearchInFocus),
              sliver: StoriesList(
                categoryName: state.category,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
