import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../application/state_providers.dart';
import '../../../constants/constants.dart';
import '../../common/loading_indicator.dart';
import 'story_card.dart';

class StoriesList extends ConsumerStatefulWidget {
  final String categoryName;

  const StoriesList({super.key, required this.categoryName});

  @override
  ConsumerState<StoriesList> createState() => _StoriesListState();
}

class _StoriesListState extends ConsumerState<StoriesList> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(StateProviders.topStoriesStateProvider).content;
    return state.map(
      data: (data) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ...data.section.results
                .map(
                  (e) => StoryCard(
                    article: e,
                    showSection:
                        widget.categoryName == Constants.defaultSection,
                  ),
                )
                .expand(
                  (element) => [
                    element,
                    const SizedBox(height: 16),
                  ],
                ),
          ],
        ),
      ),
      loading: (_) => const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: LoadingIndicator(),
        ),
      ),
    );
  }
}
