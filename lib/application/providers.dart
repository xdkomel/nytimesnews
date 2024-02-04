import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../data/api_sections_storage.dart';
import '../data/api_sections_storage_impl.dart';
import '../data/bookmarked_sections_storage.dart';
import '../data/bookmarked_sections_storage_impl.dart';
import '../data/isar_manager.dart';
import '../infrustructure/api_repository.dart';
import '../infrustructure/api_repository_impl.dart';

class Providers {
  static final Provider<ApiRepository> apiRepositoryProvider = Provider(
    (ref) => ApiRepositoryImpl(
      ref.read(apiSectionsStorageProvider),
      ref.read(logger),
    ),
  );
  static final Provider<IsarManager> isarManager = Provider(
    (_) => IsarManager(),
  );
  static final Provider<ApiSectionsStorage> apiSectionsStorageProvider =
      Provider(
    (ref) => ApiSectionsStorageImpl(
      ref.read(logger),
      ref.read(isarManager),
    ),
  );
  static final Provider<BookmarkedSectionsStorage>
      bookmarkedSectionsStorageProvider = Provider(
    (ref) => BookmarkedSectionsStorageImpl(
      ref.read(logger),
      ref.read(isarManager),
    ),
  );
  static final Provider<Logger> logger = Provider(
    (_) => Logger(
      printer: PrettyPrinter(),
    ),
  );
}
