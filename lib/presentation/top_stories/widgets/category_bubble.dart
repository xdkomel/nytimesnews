import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../state_providers.dart';
import '../../../utility/constants.dart';

class CategoryBubble extends ConsumerWidget {
  final String name;
  final bool isSelected;

  const CategoryBubble({
    super.key,
    required this.name,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => Bounceable(
    onTap: () {
      ref.read(StateProviders.selectedCategoryProvider.notifier).state = name;
    },
    child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: isSelected ? Constants.purplePrimary : Constants.greyLighter,
          ),
          height: 32,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: isSelected ? Colors.white : Constants.greyPrimary,
              ),
            ),
          ),
        ),
  );
}
