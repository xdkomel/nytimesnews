import 'package:isar/isar.dart';
import 'package:logger/logger.dart';

import '../domain/models/section.dart';
import 'dtos.dart';
import 'isar_manager.dart';
import 'models/section_isar.dart';
import 'api_sections_storage.dart';

class ApiSectionsStorageImpl extends ApiSectionsStorage {
  final IsarManager _isar;
  final Logger _logger;
  ApiSectionsStorageImpl(this._logger, this._isar);

  @override
  Future<Section?> load({
    required String sectionName,
  }) async {
    final sections =
        await _isar.isar?.sectionIsars.where().sectionEqualTo(sectionName).findAll();
    return sections?.firstOrNull?.toSection();
  }

  @override
  Future<void> store({
    required String sectionName,
    required Section section,
  }) async {
    if (_isar.isar == null) {
      _logger.d('Isar is null, so couldn\'t store data');
      return;
    }
    await _isar.isar!.writeTxn(
      () => _isar.isar!.sectionIsars.put(
        section.toIsar(sectionName),
      ),
    );
  }

  @override
  Future<void> init() async {
    await _isar.init();
  }

  @override
  Future<void> close() async {
    await _isar.close();
  }
}
