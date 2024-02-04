import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/assets_manager.dart';
import '../../../../constants/constants.dart';
import '../../../notifiers/search_field_in_focus_notifier.dart';
import '../../../notifiers/search_query_notifier.dart';
import '../../../notifiers/stories_category_filter_notifier.dart';
import '../../categories_modal/categories_modal.dart';

class SearchField extends ConsumerStatefulWidget {
  final NotifierProvider<SearchFieldInFocusNotifier, bool> focusNotifier;
  final NotifierProvider<SearchQueryNotifier, String> searchQueryNotifier;
  final NotifierProvider<StoriesCategoryFilterNotifier, ISet<String>>
      categoryFilterNotifier;

  const SearchField({
    required this.focusNotifier,
    required this.searchQueryNotifier,
    required this.categoryFilterNotifier,
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
        alignment: Alignment.center,
        child: TextField(
          focusNode: _focusNode,
          onTapOutside: (_) => _focusNode.unfocus(),
          textAlignVertical: TextAlignVertical.center,
          controller: _controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(16.0),
              child: AssetsManager.searchIcon,
            ),
            suffix: IconButton(
              icon: const Icon(
                Icons.clear,
                size: 12,
                color: Constants.greyPrimary,
              ),
              onPressed: _controller.clear,
            ),
            suffixIcon: IconButton(
              icon: ref.watch(widget.categoryFilterNotifier).isEmpty
                  ? AssetsManager.filterIconIncative
                  : AssetsManager.filterIconAtive,
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) => ProviderScope(
                    parent: ProviderScope.containerOf(context),
                    child: CategoriesModal(
                      filter: widget.categoryFilterNotifier,
                    ),
                  ),
                );
              },
            ),
            hintText: 'Search',
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Constants.greyPrimary,
            ),
            border: InputBorder.none,
          ),
        ),
      );
}
