import 'package:flutter/material.dart';

import '../../../constants/assets_manager.dart';
import '../../../constants/constants.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) => Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Constants.greyLighter,
        ),
        alignment: Alignment.topCenter,
        child: TextField(
          onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
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
              color: Constants.greyPrimary
            ),
            border: InputBorder.none,
          ),
        ),
      );
}
