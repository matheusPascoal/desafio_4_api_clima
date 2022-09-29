import 'package:desafio_4_fteam/modules/climate/datasource/climate/climate_data_source.dart';
import 'package:desafio_4_fteam/shared/core/http_client/http_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpClient extends Mock implements IHttpClient {}

final Map<String, dynamic> map = {'teste': 'teste'};
void main() {
  test('Deve retornar um Map<String, dynamic>', () async {
    final mockhttpClient = MockHttpClient();
    final dataSource = ClimateDataSource(mockhttpClient);

    when(() => mockhttpClient.get(path: any(named: 'path')))
        .thenAnswer((_) async => map);
    final response = await dataSource.get('');
    expect(response, isA<Map<String, dynamic>>());
  });
}
