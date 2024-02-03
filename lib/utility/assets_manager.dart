import 'dart:ui';

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
  static final searchIcon = SvgPicture.asset('assets/icons/search.svg');
}
