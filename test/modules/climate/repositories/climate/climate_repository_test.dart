import 'dart:convert';

import 'package:desafio_4_fteam/modules/climate/datasource/climate/i_climate_datasource.dart';
import 'package:desafio_4_fteam/modules/climate/mock.dart';
import 'package:desafio_4_fteam/modules/climate/model/model.dart';
import 'package:desafio_4_fteam/modules/climate/repositories/climate/climate_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockClimateDatasoucer extends Mock implements IClimateDatasoucer {}

final map = mockData;

void main() {
  test('Deve retornar um ClimateModel', () async {
    final climateDatasource = MockClimateDatasoucer();
    final climateRepository = ClimateRepository(climateDatasource);
    when(() => climateDatasource.get(any())).thenAnswer((_) async => map);
    final response = await climateRepository.get('betim');
    expect(response, isA<ClimateModel>());
  });
}
