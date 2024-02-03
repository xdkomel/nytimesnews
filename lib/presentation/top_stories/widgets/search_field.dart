import 'package:flutter/material.dart';

import '../../../utility/assets_manager.dart';
import '../../../utility/constants.dart';

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
          controller: _controller,
          decoration: InputDecoration(
            prefix: AssetsManager.searchIcon,
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: _controller.clear,
            ),
            hintText: 'Search',
            border: InputBorder.none,
          ),
        ),
      );
}
