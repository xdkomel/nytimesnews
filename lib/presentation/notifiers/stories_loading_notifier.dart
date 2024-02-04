import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/providers.dart';
import '../../constants/constants.dart';
import '../state_models/loading_stories_state.dart';
import '../state_models/stories_content_state.dart';

class StoriesLoadingNotifier extends Notifier<LoadingStoriesState> {
  @override
  LoadingStoriesState build() => LoadingStoriesState(
        lastUpdated: Constants.loadingFirstTime,
        category: Constants.defaultSection,
        content: StoriesContentState.loading(),
      );

  Future<void> loadData() async {
    final category = state.category;
    state = state.copyWith(content: StoriesContentState.loading());
    final api = ref.read(Providers.apiRepositoryProvider);
    final data = await api.loadData(category);
    data.fold(
      (error) => state = state.copyWith(
        lastUpdated: DateTime.now().toIso8601String(),
        content: StoriesContentState.error(errorMessage: error),
      ),
      (data) => state = state.copyWith(
        lastUpdated: data.lastUpdated,
        content: StoriesContentState.data(section: data),
      ),
    );
  }

  Future<void> setCategory(String category) async {
    state = state.copyWith(category: category);
    await loadData();
  }
}
