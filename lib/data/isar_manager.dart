import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'models/section_isar.dart';
import 'models/section_name.dart';

class IsarManager {
  Isar? isar;

  Future<void> close() async {
    isar?.close();
  }

  Future<void> init() async {
    if (isar != null) {
      return;
    }
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [SectionNameSchema, SectionIsarSchema],
      directory: dir.path,
    );
  }
}