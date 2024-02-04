import 'dart:ui';

abstract class Constants {
  static const Color purplePrimary = Color(0xff475ad7);
  static const Color greyLight = Color(0xffACAFC3);
  static const Color greyLighter = Color(0xffF3F4F6);
  static const Color blackPrimary = Color(0xff333647);
  static const Color greyPrimary = Color(0xff7C82A1);
  static const Color greyDarker = Color(0xff666C8E);

  static const String defaultSection = 'home';
  static const List<String> categories = [
    'home',
    'arts',
    'automobiles',
    'books/review',
    'business',
    'fashion',
    'food',
    'health',
    'insider',
    'magazine',
    'movies',
    'nyregion',
    'obituaries',
    'opinion',
    'politics',
    'realestate',
    'science',
    'sports',
    'sundayreview',
    'technology',
    'theater',
    't-magazine',
    'travel',
    'upshot',
    'us',
    'world',
  ];
  static final List<String> categoriesEmojis = [
    '🏠',
    '🎨',
    '🚗',
    '📖',
    '💼',
    '👒',
    '🍲',
    '🍎',
    '👀',
    '🗞️',
    '📽️',
    '🗽',
    '🥀',
    '💭',
    '🗳️',
    '🏘️',
    '🔬',
    '🏀',
    '🔍',
    '💻',
    '🎭',
    '🎁',
    '🛩️',
    '💡',
    '🇺🇸',
    '🗺️',
  ];

  static const apiPath = 'https://api.nytimes.com/svc/topstories/v2/';

  static const cardHeight = 240.0;

  static const noArticlesMessage = 'Sadly, no articles found';
  static const noFavourites = 'No bookmarked categories';
  static const loadMoreText = 'Load Five More';
  static const loadingFirstTime = 'Loading data the first time';

  static const duration250 = Duration(milliseconds: 250);
  static const duration500 = Duration(milliseconds: 400);
}

extension StringCapitalize on String {
  String capitalize() {
     return 
       "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}