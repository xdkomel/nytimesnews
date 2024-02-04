import 'package:dartz/dartz.dart';

import '../domain/models/section.dart';

abstract class ApiRepository {
  Future<Either<String, Section>> loadData(String section);
}