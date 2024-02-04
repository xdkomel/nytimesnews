import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoriesCategoryFilterNotifier extends Notifier<ISet<String>> {
  @override
  ISet<String> build() => ISet<String>.empty(ToStringOrder());

  void add(String category) {
    state = state.insert(category);
  }

  void remove(String category) {
    state = state.remove(category);
  }

  void toggle(String category) {
    if (state.contains(category)) {
      remove(category);
      return;
    }
    add(category);
  }

  void reset() => state = ISet<String>.empty(ToStringOrder());
}