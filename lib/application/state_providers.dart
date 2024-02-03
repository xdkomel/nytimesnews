import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/top_stories/state_models/top_stories_state.dart';
import '../presentation/top_stories/top_stories_notifier.dart';
import '../presentation/top_stories/widgets/search_field/search_field_in_focus_notifier.dart';

abstract class StateProviders {
  static final topStoriesStateProvider =
      NotifierProvider<TopStoriesNotifier, TopStoriesState>(
    () => TopStoriesNotifier(),
  );
  static final isSearchInFocus =
      NotifierProvider<SearchFieldInFocusNotifier, bool>(
    () => SearchFieldInFocusNotifier(),
  );
}
