import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookmarkedCategoriesNotifier extends Notifier<ISet<String>> {
  @override
  ISet<String> build() => ISet<String>.empty(ToStringOrder());

  void addCategory(String category) {
    state = state.insert(category);
  }

  void removeCategory(String category) {
    state = state.remove(category);
  }

  void toggleCategory(String category) {
    if (state.contains(category)) {
      removeCategory(category);
      return;
    }
    addCategory(category);
  }
}