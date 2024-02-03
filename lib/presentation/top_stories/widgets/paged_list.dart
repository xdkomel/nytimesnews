import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class PagedList extends StatefulWidget {
  final Iterable<Widget> elements;
  final int length;
  const PagedList({super.key, required this.elements, required this.length});

  @override
  State<PagedList> createState() => _PagedListState();
}

class _PagedListState extends State<PagedList> {
  int _showItems = 5;

  void loadMore() {
    setState(() {
      _showItems += 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    final items = widget.elements.take(_showItems).toList();
    int shown = items.length;
    if (items.length < widget.length) {
      items.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: CupertinoButton.filled(
            onPressed: loadMore,
            child: const Text(
              Constants.loadMoreText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      );
      shown += 1;
    }
    return SliverList.builder(
      itemBuilder: (context, index) => items[index],
      itemCount: shown,
    );
  }
}
