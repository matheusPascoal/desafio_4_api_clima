// CONTRATO
abstract class IClimateDatasoucer {
  Future<Map<String, dynamic>> get(String city);
}
