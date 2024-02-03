import 'dart:ui';

class Constants {
  static const Color purplePrimary = Color(0xff475ad7);
  static const Color greyLight = Color(0xffACAFC3);
  static const Color greyLighter = Color(0xffF3F4F6);
  static const Color blackPrimary = Color(0xff333647);
  static const Color greyPrimary = Color(0xff7C82A1);

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
}

extension StringCapitalize on String {
  String capitalize() {
     return 
       "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}