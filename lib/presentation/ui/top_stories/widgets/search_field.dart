import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/assets_manager.dart';
import '../../../../constants/constants.dart';
import '../../../notifiers/search_field_in_focus_notifier.dart';
import '../../../notifiers/search_query_notifier.dart';

class SearchField extends ConsumerStatefulWidget {
  final NotifierProvider<SearchFieldInFocusNotifier, bool> focusNotifier;
  final NotifierProvider<SearchQueryNotifier, String> searchQueryNotifier;

  const SearchField({
    required this.focusNotifier,
    required this.searchQueryNotifier,
    super.key,
  });

  @override
  ConsumerState<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends ConsumerState<SearchField> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    _focusNode.addListener(() {
      final focus = _focusNode.hasFocus;
      final manager = ref.read(widget.focusNotifier.notifier);
      if (focus) {
        manager.focus();
      } else {
        manager.unfocus();
      }
    });
    _controller.addListener(() {
      final text = _controller.text;
      ref.read(widget.searchQueryNotifier.notifier).update(text);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Constants.greyLighter,
        ),
        alignment: Alignment.topCenter,
        child: TextField(
          focusNode: _focusNode,
          onTapOutside: (_) => _focusNode.unfocus(),
          textAlignVertical: TextAlignVertical.center,
          controller: _controller,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(16.0),
              child: AssetsManager.searchIcon,
            ),
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.clear,
                color: Constants.greyPrimary,
              ),
              onPressed: _controller.clear,
            ),
            hintText: 'Search',
            hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Constants.greyPrimary),
            border: InputBorder.none,
          ),
        ),
      );
}
