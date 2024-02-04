import 'package:isar/isar.dart';
import 'package:logger/logger.dart';

import 'bookmarked_sections_storage.dart';
import 'dtos.dart';
import 'isar_manager.dart';
import 'models/section_name.dart';

class BookmarkedSectionsStorageImpl extends BookmarkedSectionsStorage {
  final IsarManager _isar;
  final Logger _logger;
  BookmarkedSectionsStorageImpl(this._logger, this._isar);

  @override
  Future<void> close() async {
    await _isar.close();
  }

  @override
  Future<void> init() async {
    await _isar.init();
  }

  @override
  Future<Iterable<String>> load() async {
    final sections = await _isar.isar?.sectionNames.where().findAll();
    if (sections == null) {
      return const Iterable.empty();
    }
    return sections.map((e) => e.getName());
  }

  @override
  Future<void> store({required String section}) async {
    if (_isar.isar == null) {
      _logger.d('Isar is null, so couldn\'t store data');
      return;
    }
    await _isar.isar!.writeTxn(
      () => _isar.isar!.sectionNames.put(
        section.toSectionIsar(),
      ),
    );
  }

  @override
  Future<void> remove({required String section}) async {
    if (_isar.isar == null) {
      _logger.d('Isar is null, so couldn\'t store data');
      return;
    }
    await _isar.isar!.writeTxn(
      () => _isar.isar!.sectionNames.delete(section.hashCode),
    );
  }
}
