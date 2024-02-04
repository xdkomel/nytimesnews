import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/constants.dart';
import '../../../notifiers/search_query_notifier.dart';
import '../../../notifiers/stories_filtered_notifier.dart';
import '../../../state_models/filtered_stories_state.dart';
import '../../../state_models/stories_content_state.dart';
import '../../common/loading_indicator.dart';
import 'paged_list.dart';
import 'story_card.dart';

class StoriesList extends ConsumerStatefulWidget {
  final TopStoriesContentStateData data;
  final NotifierProvider<StoriesFilteredNotifier, FilteredStoriesState>
      filteredNotifier;
  final NotifierProvider<SearchQueryNotifier, String> queryNotifier;
  final bool showSection;

  const StoriesList({
    super.key,
    required this.showSection,
    required this.data,
    required this.filteredNotifier,
    required this.queryNotifier,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StoriesListState();
}

class _StoriesListState extends ConsumerState<StoriesList> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) => filter());
    super.initState();
  }

  Future<void> filter() async {
    final query = ref.read(widget.queryNotifier);
    await ref
        .read(widget.filteredNotifier.notifier)
        .filter(query, widget.data.section.results);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(widget.queryNotifier, (_, __) => filter());
    final articles = ref.watch(widget.filteredNotifier);
    return articles.map(
      data: (data) {
        final articles = data.articles;
        if (articles.isEmpty) {
          return const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  Constants.noArticlesMessage,
                  style: TextStyle(
                    color: Constants.blackPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          );
        }
        final elements = articles.map(
          (e) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: StoryCard(
              key: ValueKey(e.abstract),
              article: e,
              showSection: widget.showSection,
            ),
          ),
        );
        return SliverPadding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          sliver: PagedList(
            elements: elements,
            length: elements.length,
          ),
        );
      },
      loading: (_) => const SliverToBoxAdapter(
        child: Center(child: LoadingIndicator()),
      ),
    );
  }
}
