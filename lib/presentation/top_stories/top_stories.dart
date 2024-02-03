import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../state_providers.dart';
import '../../utility/constants.dart';
import 'widgets/category_bubble.dart';
import 'widgets/persistent_header.dart';
import 'widgets/search_field.dart';
import 'widgets/stories_list.dart';

class TopStories extends ConsumerWidget {
  const TopStories({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final category = ref.watch(StateProviders.selectedCategoryProvider);
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 28),
                  Text(
                    'NYT Top Stories',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Constants.blackPrimary,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Updated 4 seconds ago',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Constants.greyPrimary,
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: PersistentHeader(
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SearchField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 4),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: Constants.categories
                            .map((e) => e.capitalize())
                            .map(
                              (name) => CategoryBubble(
                                name: name,
                                isSelected: name == category,
                              ),
                            )
                            .expand(
                              (element) => [
                                const SizedBox(width: 16),
                                element,
                              ],
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: StoriesList(
              categoryName: category,
            ),
          ),
          // SliverList.separated(
          //   itemBuilder: (context, i) => Text("Element number $i"),
          //   separatorBuilder: (context, _) => const SizedBox(height: 20),
          // ),
        ],
      ),
    );
  }
}
