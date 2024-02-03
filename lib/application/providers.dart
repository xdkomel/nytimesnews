import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infrustructure/api_repository.dart';
import '../infrustructure/api_repository_impl.dart';

class Providers {
  static final Provider<ApiRepository> apiRepositoryProvider =
      Provider((_) => ApiRepositoryImpl());
}
