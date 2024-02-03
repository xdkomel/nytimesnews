import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/providers.dart';
import '../../constants/constants.dart';
import 'state_models/top_stories_content_state.dart';
import 'state_models/top_stories_state.dart';

class TopStoriesNotifier extends Notifier<TopStoriesState> {
  @override
  TopStoriesState build() => TopStoriesState(
        lastUpdated: 'Loading data the first time',
        category: Constants.defaultSection,
        content: TopStoriesContentState.loading(),
      );

  Future<void> loadData() async {
    final category = state.category;
    state = TopStoriesState(
      lastUpdated: state.lastUpdated,
      category: category,
      content: TopStoriesContentState.loading(),
    );
    final api = ref.read(Providers.apiRepositoryProvider);
    final data = await api.loadData(category);
    state = TopStoriesState(
      lastUpdated: data.lastUpdated,
      category: category,
      content: TopStoriesContentState.data(section: data),
    );
  }

  Future<void> updateCategory(String category) async {
    state = state.copyWith(category: category);
    await loadData();
  }
}
