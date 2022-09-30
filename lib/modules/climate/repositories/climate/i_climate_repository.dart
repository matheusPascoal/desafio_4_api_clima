import '../../model/climate_model.dart';

abstract class IClimateRepository {
  Future<ClimateModel> get(String city);
}
