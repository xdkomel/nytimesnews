import 'dart:convert';

import 'package:dio/dio.dart';

import '../api_key.dart';
import '../constants/constants.dart';
import '../domain/models/section.dart';
import 'api_repository.dart';

class ApiRepositoryImpl extends ApiRepository {
  final _dio = Dio();

  @override
  Future<Section> loadData(String section) async {
    final response = await _dio.get(
      '${Constants.apiPath}$section.json',
      queryParameters: {
        'api-key': KEY,
      },
    );
    final map = response.data as Map<String, dynamic>;
    return Section.fromJson(map);
  }
}
