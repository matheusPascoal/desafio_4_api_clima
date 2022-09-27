import '../../../../shared/base.dart';
import '../../../../shared/core/http_client/http_client.dart';
import '../../../../shared/repositories/datasource/i_climate_datasource.dart';

class ClimateDataSource implements InterfaceDatasoucer {
  final HttpClient httpClient;
// PRECISA LEVAR AS MAÇAS PARA O CLIENTE REPOSITORIO
  ClimateDataSource(this.httpClient);

  @override
  Future<Map<String, dynamic>> get(String city) async {
    final path = BaseUrl.url + city;
    final response = await httpClient.get(path: path);

    return response;
  }
}
