import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../api_key.dart';
import '../constants/constants.dart';
import '../data/storage.dart';
import '../domain/models/section.dart';
import 'api_repository.dart';

class ApiRepositoryImpl extends ApiRepository {
  final _dio = Dio();
  final Storage _storage;
  final Logger _logger;
  ApiRepositoryImpl(this._storage, this._logger);

  @override
  Future<Either<String, Section>> loadData(String section) async {
    try {
      final response = await _dio.get(
        '${Constants.apiPath}$section.json',
        queryParameters: {
          'api-key': KEY,
        },
      );
      final status = response.statusCode;
      if (status == 200) {
        final map = response.data as Map<String, dynamic>;
        final sectionData = Section.fromJson(map);
        _storage.store(sectionName: section, section: sectionData);
        _logger.d('Got from internet and stored the $section section');
        return right(sectionData);
      }
      final loadedSection = await _storage.load(sectionName: section);
      if (loadedSection != null) {
        _logger.d(
            'Status code is not 200 so successfully loaded the $section section from storage');
        return right(loadedSection);
      }
      _logger.d('Problems with internet: $status');
      if (status == null) {
        return left('Ошибка сети');
      }
      return left('Ошибка ${response.statusCode}');
    } catch (e) {
      _logger.d('Caught error while conencting to the Api: $e');
      final loadedSection = await _storage.load(sectionName: section);
      if (loadedSection != null) {
        _logger.d(
            'Successfully loaded the $section section from storage');
        return right(loadedSection);
      }
      return left('Ошибка при скачивании или обработке данных');
    }
  }
}
