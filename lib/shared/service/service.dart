import 'package:uno/uno.dart';

import '../../modules/climate/model/model.dart';

// CONTRATO
abstract class RestClient {
  Future<ModelClimate> get(String city);
}

//BASE

class BaseUrl {
  static const url = 'https://goweather.herokuapp.com/weather/';
}

//SERVICE / REPOSITORIO
class ServiceApi implements RestClient {
  final Uno uno;

  ServiceApi(this.uno);

  @override
  Future<ModelClimate> get(String city) async {
    // var local = BaseUrl.url + city;
    final response = await uno.get(BaseUrl.url + city);
    // final response = Mock();
    // print(local);

    var result = ModelClimate.fromMap(response.data);

    print(result.toString());
    return result;
  }
}
