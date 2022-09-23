import 'package:uno/uno.dart';

import '../../modules/climate/model/model.dart';

import 'i_climate_datasource.dart';
import 'i_climate_repository.dart';

class ClimateRepository implements InterfaceRepository {
  final InterfaceDatasoucer climateDataSource;
  ClimateRepository(this.climateDataSource);
  @override
  Future<ClimateModel> get(String city) async {
    try {
      final result = await climateDataSource.get(city);
      return result;
    } catch (e) {
      throw Exception('Error API');
    }
  }
}
