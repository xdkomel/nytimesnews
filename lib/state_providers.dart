import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'utility/constants.dart';

abstract class StateProviders {
  static final selectedCategoryProvider = StateProvider<String>(
    (ref) => Constants.categories.first,
  );
}
