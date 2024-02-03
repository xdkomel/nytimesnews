import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/notifiers/search_field_in_focus_notifier.dart';
import '../presentation/notifiers/top_stories_notifier.dart';
import '../presentation/state_models/top_stories_state.dart';

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
