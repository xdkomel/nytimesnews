import '../domain/models/section.dart';

abstract class Storage {
  Future<void> store({required String sectionName, required Section section});

  Future<Section?> load({required String sectionName});

  Future<void> init();

  Future<void> close();
}