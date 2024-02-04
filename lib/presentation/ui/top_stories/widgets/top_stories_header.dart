import 'package:flutter/widgets.dart';

import '../../../../constants/constants.dart';

class TopStoriesHeader extends StatelessWidget {
  final String lastUpdatedMessage;
  final String title;

  const TopStoriesHeader({super.key, required this.lastUpdatedMessage, required this.title});

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 28),
               Text(
                title,
                style: const TextStyle(
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
      );
}
