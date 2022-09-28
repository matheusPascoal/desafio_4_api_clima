import 'package:uno/uno.dart';
import 'http_client.dart';

class RestHttpImpl implements IHttpClient {
  final Uno uno;
// FALA HTTPCLIENT PARA BUSCAR AS MAÇAS USANDO O SEU UNO (METODO REQUISIÇAO)
  RestHttpImpl(this.uno);
  @override
  Future<Map<String, dynamic>> get({required String path}) async {
    final response = await uno.get(path);
    // final mock = mockData;
    return response.data;
  }
}
