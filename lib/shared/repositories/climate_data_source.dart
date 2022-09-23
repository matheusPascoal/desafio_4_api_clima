import 'package:uno/uno.dart';

import '../../modules/climate/model/model.dart';
import 'base.dart';
import 'i_climate_datasource.dart';

class ClimateDataSource implements InterfaceDatasoucer {
  final Uno uno;

  ClimateDataSource(this.uno);
  @override
  Future<ClimateModel> get(String city) async {
    final response = await uno.get(BaseUrl.url + city);
    return ClimateModel.fromMap(response.data);
  }
}
