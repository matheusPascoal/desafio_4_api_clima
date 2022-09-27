import 'package:uno/uno.dart';
import 'http_client.dart';

class UnoHttpImpl implements HttpClient {
  final Uno uno;
// FALA HTTPCLIENT PARA BUSCAR AS MAÇAS USANDO O SEU UNO (METODO REQUISIÇAO)
  UnoHttpImpl(this.uno);
  @override
  Future<Map<String, dynamic>> get({required String path}) async {
    final response = await uno.get(path);
    // final mock = mockData;
    return response.data;
  }
}
