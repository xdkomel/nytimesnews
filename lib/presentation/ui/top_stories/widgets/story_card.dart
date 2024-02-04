import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../application/state_providers.dart';
import '../../../../constants/assets_manager.dart';
import '../../../../constants/constants.dart';
import '../../../../domain/models/article.dart';
import '../../webview/webview.dart';

class StoryCard extends StatelessWidget {
  final Article article;
  final bool showSection;
  const StoryCard({
    super.key,
    required this.article,
    this.showSection = false,
  });

  void openWebview(BuildContext context) {
    final url = Uri.tryParse(article.url);
    if (url == null) {
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Webview(url: url),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final imageUrl = article.multimedia?.firstOrNull?.url;
    return Bounceable(
      onTap: () => openWebview(context),
      child: Container(
        height: Constants.cardHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Constants.greyPrimary,
          image: imageUrl != null
              ? DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withAlpha(102),
                    BlendMode.darken,
                  ),
                  image: CachedNetworkImageProvider(imageUrl),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _BookmarkRow(article.section),
              const Spacer(),
              if (showSection)
                Text(
                  article.section.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              const SizedBox(height: 8),
              Text(
                article.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BookmarkRow extends ConsumerWidget {
  final String section;
  const _BookmarkRow(this.section);

  void pressBookmark(WidgetRef ref) {
    final category = section;
    final notifier = ref.read(StateProviders.bookmarkedCategories.notifier);
    notifier.toggleCategory(category);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) => Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () => pressBookmark(ref),
            icon:
                ref.watch(StateProviders.bookmarkedCategories).contains(section)
                    ? AssetsManager.bookmarkIconFillWhite
                    : AssetsManager.bookmarkIconWhite,
          ),
        ],
      );
}
