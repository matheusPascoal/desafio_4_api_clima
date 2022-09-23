// CONTRATO
import '../../modules/climate/model/model.dart';

abstract class InterfaceDatasoucer {
  Future<ClimateModel> get(String city);
}
