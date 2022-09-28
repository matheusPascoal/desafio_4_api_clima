import '../../model/model.dart';

abstract class IClimateRepository {
  Future<ClimateModel> get(String city);
}
