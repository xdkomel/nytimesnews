import '../domain/models/section.dart';

abstract class ApiRepository {
  Future<Section> loadData(String section);
}