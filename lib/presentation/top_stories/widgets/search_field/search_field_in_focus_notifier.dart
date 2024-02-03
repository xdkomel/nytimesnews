import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchFieldInFocusNotifier extends Notifier<bool> {
  @override
  build() => false;

  void focus() => state = true;
  void unfocus() => state = false;
}