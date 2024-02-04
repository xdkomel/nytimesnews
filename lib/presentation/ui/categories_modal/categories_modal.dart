import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/constants.dart';
import '../../notifiers/stories_category_filter_notifier.dart';

class CategoriesModal extends ConsumerWidget {
  final NotifierProvider<StoriesCategoryFilterNotifier, ISet<String>> filter;

  const CategoriesModal({required this.filter, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Constants.purplePrimary,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Constants.purplePrimary,
                  ),
                ),
                onPressed: () => ref.read(filter.notifier).reset(),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: LayoutGrid(
              columnSizes: [1.fr, 1.fr],
              rowSizes: List.generate(
                (Constants.categories.length / 2).ceil(),
                (_) => 72.px,
              ),
              columnGap: 8,
              rowGap: 8,
              children: List.generate(
                Constants.categories.length,
                (index) {
                  final category = Constants.categories[index];
                  final emoji = Constants.categoriesEmojis[index];
                  final borderColor = ref.watch(filter).contains(category)
                      ? Constants.purplePrimary
                      : Constants.greyLighter;
                  final textColor = ref.watch(filter).contains(category)
                      ? Constants.purplePrimary
                      : Constants.greyDarker;
                  return Bounceable(
                    onTap: () => ref.read(filter.notifier).toggle(category),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: borderColor,
                        ),
                      ),
                      child: Text(
                        '$emoji ${category.capitalize()}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: textColor,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
}
