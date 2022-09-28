abstract class IHttpClient {
  Future<Map<String, dynamic>> get({required String path});
}
