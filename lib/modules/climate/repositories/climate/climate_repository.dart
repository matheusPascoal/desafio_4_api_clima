import '../../model/model.dart';
import '../../../../shared/repositories/datasource/i_climate_datasource.dart';
import 'i_climate_repository.dart';

// O DATASOURCE ENTREGA AS MAÇAS PARA O REPOSITORIO QUE VAI LEVAR
// AS MAÇAS CORTADAS PARA O CONTROLLER
class ClimateRepository implements InterfaceRepository {
  final InterfaceDatasoucer climateDataSource;
  ClimateRepository(this.climateDataSource);
  @override
  Future<ClimateModel> get(String city) async {
    try {
      final result = await climateDataSource.get(city);

      return ClimateModel.fromMap(result);
    } catch (e) {
      throw Exception('Error API');
    }
  }
}