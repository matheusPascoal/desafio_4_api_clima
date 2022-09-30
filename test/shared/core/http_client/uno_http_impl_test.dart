import 'package:desafio_4_fteam/modules/climate/datasource/climate/i_climate_datasource.dart';
import 'package:desafio_4_fteam/shared/core/http_client/http_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:uno/uno.dart';

class MockHttpSource extends Mock implements IHttpClient {}

final uno = Uno();
void main() {
  test('Deve retornar um IHttpClient', () async {});
}



// final map = mockData;

// void main() {
//   
//     final climateDatasource = MockClimateDatasoucer();
//     final climateRepository = ClimateRepository(climateDatasource);
//     when(() => climateDatasource.get(any())).thenAnswer((_) async => map);
//     final response = await climateRepository.get('betim');
//     expect(response, isA<ClimateModel>());
//   });
// }