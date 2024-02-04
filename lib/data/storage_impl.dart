import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

import '../domain/models/section.dart';
import 'dtos.dart';
import 'models/section_isar.dart';
import 'storage.dart';

class StorageImpl extends Storage {
  Isar? _isar;
  Logger _logger;
  StorageImpl(this._logger);

  @override
  Future<Section?> load({
    required String sectionName,
  }) async {
    final sections =
        await _isar?.sectionIsars.where().sectionEqualTo(sectionName).findAll();
    return sections?.firstOrNull?.toSection();
  }

  @override
  Future<void> store({
    required String sectionName,
    required Section section,
  }) async {
    if (_isar == null) {
      _logger.d('Isar is null, so couldn\'t store data');
      return;
    }
    await _isar!.writeTxn(
      () => _isar!.sectionIsars.put(
        section.toIsar(sectionName),
      ),
    );
  }

  @override
  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [SectionIsarSchema],
      directory: dir.path,
    );
  }

  @override
  Future<void> close() async {
    _isar?.close();
  }
}
