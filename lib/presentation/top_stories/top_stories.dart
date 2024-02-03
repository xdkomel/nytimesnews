import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../application/state_providers.dart';
import '../../constants/constants.dart';
import 'widgets/category_bubble.dart';
import 'widgets/persistent_header.dart';
import 'widgets/search_field.dart';
import 'widgets/stories_list.dart';

class TopStories extends ConsumerStatefulWidget {
  const TopStories({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TopStoriesState();
}

class _TopStoriesState extends ConsumerState<TopStories> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(StateProviders.topStoriesStateProvider.notifier).loadData();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(StateProviders.topStoriesStateProvider);
    final lastUpdated = DateTime.tryParse(state.lastUpdated);
    final lastUpdatedMessage = lastUpdated == null
        ? state.lastUpdated
        : "Last updated ${DateFormat('dd-MM-yyyy HH:mm').format(lastUpdated)}";
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 28),
                  const Text(
                    'NY Times Top Stories',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Constants.blackPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    lastUpdatedMessage,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Constants.greyPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
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
                            .map(
                              (name) => CategoryBubble(
                                name: name,
                                isSelected: name == state.category,
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
              categoryName: state.category,
            ),
          ),
        ],
      ),
    );
  }
}
