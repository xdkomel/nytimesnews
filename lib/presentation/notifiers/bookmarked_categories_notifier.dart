import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/providers.dart';

class BookmarkedCategoriesNotifier extends Notifier<ISet<String>> {
  @override
  ISet<String> build() => ISet<String>.empty(ToStringOrder());

  void addCategory(String category) {
    state = state.insert(category);
    ref
        .read(Providers.bookmarkedSectionsStorageProvider)
        .store(section: category);
  }

  void removeCategory(String category) {
    state = state.remove(category);
    ref
        .read(Providers.bookmarkedSectionsStorageProvider)
        .remove(section: category);
  }

  void toggleCategory(String category) {
    if (state.contains(category)) {
      removeCategory(category);
      return;
    }
    addCategory(category);
  }

  Future<void> loadFromStorage() async {
    final iterable =
        await ref.read(Providers.bookmarkedSectionsStorageProvider).load();
    state = ISet.fromIterable(ToStringOrder(), iterable);
  }
}
