import 'package:desafio_4_fteam/modules/climate/datasource/climate/i_climate_datasource.dart';
import 'package:desafio_4_fteam/modules/climate/repositories/climate/climate_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class UnoMock extends Mock implements IClimateDatasoucer {}

final Map<String, dynamic> map = {'teste': 'teste'};

void main() {
  test('Test REPOSITORY', () async {
    final repository = UnoMock();
    final climateRepository = ClimateRepository(repository);
    when(() => repository.get(any())).thenAnswer((_) async => map);
    final response = await repository.get('');
    expect(response, isA<Map<String, dynamic>>());
  });
}
