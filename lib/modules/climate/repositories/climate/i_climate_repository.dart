import '../../model/model.dart';

abstract class InterfaceRepository {
  Future<ClimateModel> get(String city);
}
