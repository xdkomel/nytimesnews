import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../constants/assets_manager.dart';
import '../../../../constants/constants.dart';
import '../../../../domain/models/article.dart';
import '../../webview/webview.dart';

class StoryCard extends StatefulWidget {
  final Article article;
  final bool showSection;
  const StoryCard({
    super.key,
    required this.article,
    this.showSection = false,
  });

  @override
  State<StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard> {
  @override
  Widget build(BuildContext context) {
    final imageUrl = widget.article.multimedia?.firstOrNull?.url;
    return Bounceable(
      onTap: () {
        final url = Uri.tryParse(widget.article.url);
        if (url == null) {
          return;
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Webview(url: url),
          ),
        );
      },
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
              Row(
                children: [
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      // TODO: add to bookmarks
                    },
                    icon: AssetsManager.bookmarkIconWhite,
                  ),
                ],
              ),
              const Spacer(),
              if (widget.showSection)
                Text(
                  widget.article.section.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              const SizedBox(height: 8),
              Text(
                widget.article.title,
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
