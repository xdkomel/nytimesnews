import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

abstract class AssetsManager {
  static final homepageIconAccent = SvgPicture.asset(
    'assets/icons/estate.svg',
    colorFilter: const ColorFilter.mode(
      Constants.purplePrimary,
      BlendMode.srcIn,
    ),
  );
  static final homepageIcon = SvgPicture.asset(
    'assets/icons/estate.svg',
    colorFilter: const ColorFilter.mode(
      Constants.greyLight,
      BlendMode.srcIn,
    ),
  );
  static final bookmarkIconAccent = SvgPicture.asset(
    'assets/icons/bookmark.svg',
    colorFilter: const ColorFilter.mode(
      Constants.purplePrimary,
      BlendMode.srcIn,
    ),
  );
  static final bookmarkIcon = SvgPicture.asset(
    'assets/icons/bookmark.svg',
    colorFilter: const ColorFilter.mode(
      Constants.greyLight,
      BlendMode.srcIn,
    ),
  );
  static final bookmarkIconWhite = SvgPicture.asset(
    'assets/icons/bookmark.svg',
    colorFilter: const ColorFilter.mode(
      Colors.white,
      BlendMode.srcIn,
    ),
  );
  static final bookmarkIconFillWhite = SvgPicture.asset(
    'assets/icons/bookmark_fill.svg',
    colorFilter: const ColorFilter.mode(
      Colors.white,
      BlendMode.srcIn,
    ),
  );
  static final searchIcon = SvgPicture.asset(
    'assets/icons/search.svg',
    width: 24,
    height: 24,
    fit: BoxFit.contain,
    colorFilter: const ColorFilter.mode(
      Constants.greyPrimary,
      BlendMode.srcIn,
    ),
  );
}
