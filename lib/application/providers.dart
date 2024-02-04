import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../data/storage.dart';
import '../data/storage_impl.dart';
import '../infrustructure/api_repository.dart';
import '../infrustructure/api_repository_impl.dart';

class Providers {
  static final Provider<ApiRepository> apiRepositoryProvider = Provider(
    (ref) => ApiRepositoryImpl(
      ref.read(storageProvider),
      ref.read(logger),
    ),
  );
  static final Provider<Storage> storageProvider = Provider(
    (ref) => StorageImpl(
      ref.read(logger),
    ),
  );
  static final Provider<Logger> logger = Provider(
    (_) => Logger(
      printer: PrettyPrinter(),
    ),
  );
}
