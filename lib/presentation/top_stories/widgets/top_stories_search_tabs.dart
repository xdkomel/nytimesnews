import 'package:flutter/widgets.dart';

import '../../../constants/constants.dart';
import 'category_bubble.dart';
import 'persistent_header.dart';
import 'search_field/search_field.dart';

class TopStoriesSearchTabs extends StatelessWidget {
  final String category;

  const TopStoriesSearchTabs({super.key, required this.category});

  @override
  Widget build(BuildContext context) => SliverPersistentHeader(
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
      );
}
