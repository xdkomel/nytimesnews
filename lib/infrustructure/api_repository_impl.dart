import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../api_key.dart';
import '../constants/constants.dart';
import '../domain/models/section.dart';
import 'api_repository.dart';

class ApiRepositoryImpl extends ApiRepository {
  final _dio = Dio();

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
      if (status == null) {
        return left('Ошибка сети');
      }
      if (status != 200) {
        return left('Ошибка ${response.statusCode}');
      }
      final map = response.data as Map<String, dynamic>;
      return right(Section.fromJson(map));
    } catch (e) {
      return left('Ошибка при скачивании или обработке данных');
    }
  }
}
