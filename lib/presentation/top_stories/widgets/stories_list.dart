import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../application/state_providers.dart';
import '../../../constants/constants.dart';
import '../../../domain/models/article.dart';
import '../../common/loading_indicator.dart';
import 'story_card.dart';

class StoriesList extends ConsumerStatefulWidget {
  final String categoryName;

  const StoriesList({super.key, required this.categoryName});

  @override
  ConsumerState<StoriesList> createState() => _StoriesListState();
}

class _StoriesListState extends ConsumerState<StoriesList> {
  bool matchesQuery(String? query, Article article) {
    if (query == null) {
      return true;
    }
    return article.title.toLowerCase().contains(query) ||
        article.abstract.toLowerCase().contains(query);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(StateProviders.topStoriesStateProvider).content;
    return state.map(
      data: (data) {
        final articles = data.section.results.where(
          (article) {
            final query =
                ref.read(StateProviders.topStoriesStateProvider).searchQuery;
            return matchesQuery(query, article);
          },
        );
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
        final elements = articles
            .map(
              (e) => StoryCard(
                key: ValueKey(e.title),
                article: e,
                showSection: widget.categoryName == Constants.defaultSection,
              ),
            )
            .expand(
              (element) => [
                element,
                const SizedBox(height: 16),
              ],
            )
            .toList();
        return SliverPadding(
          padding: const EdgeInsets.all(20.0),
          sliver: SliverList.builder(
            itemBuilder: (context, index) => elements[index],
            itemCount: elements.length,
          ),
        );
      },
      loading: (_) => const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: LoadingIndicator(),
          ),
        ),
      ),
    );
  }
}
