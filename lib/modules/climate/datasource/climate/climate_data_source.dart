import '../../../../shared/core/base.dart';
import '../../../../shared/core/http_client/http_client.dart';
import 'i_climate_datasource.dart';

class ClimateDataSource implements IClimateDatasoucer {
  final IHttpClient httpClient;
// PRECISA LEVAR AS MAÇAS PARA O CLIENTE REPOSITORIO
  ClimateDataSource(this.httpClient);

  @override
  Future<Map<String, dynamic>> get(String city) async {
    final path = BaseUrl.url + city;
    final response = await httpClient.get(path: path);

    return response;
  }
}
