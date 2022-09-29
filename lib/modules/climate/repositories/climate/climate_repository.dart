import '../../datasource/climate/i_climate_datasource.dart';
import '../../model/model.dart';
import 'i_climate_repository.dart';

// O DATASOURCE ENTREGA AS MAÇAS PARA O REPOSITORIO QUE VAI LEVAR
// AS MAÇAS CORTADAS PARA O CONTROLLER
class ClimateRepository implements IClimateRepository {
  final IClimateDatasoucer climateDataSource;
  ClimateRepository(this.climateDataSource);
  @override
  Future<ClimateModel> get(String city) async {
    try {
      final result = await climateDataSource.get(city);

      return ClimateModel.fromMap(result);
    } catch (e) {
      rethrow;
      // throw Exception('Error API');
    }
  }
}
