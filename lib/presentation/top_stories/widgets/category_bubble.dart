import 'package:flutter/material.dart';

import '../../../utility/constants.dart';

class CategoryBubble extends StatelessWidget {
  final String name;
  final bool isSelected;

  const CategoryBubble({
    super.key,
    required this.name,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) => Container(
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
      );
}
