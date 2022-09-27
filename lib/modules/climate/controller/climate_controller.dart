import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../repositories/climate/i_climate_repository.dart';
import 'state/state_controller.dart';

class ClimateController extends ChangeNotifier {
  final InterfaceRepository climateRepository;

  ClimateState climateState = ClimateState('', false, false, null);
  String standarCity = 'Betim';
  ClimateController(this.climateRepository);
// RECEBE AS MAÇAS PARA COLOCAR NA VITRINE DA VENDINHA
  Future<void> getClimate({required String city}) async {
    try {
      climateState = ClimateState('', true, false, null);
      final response = await climateRepository.get(city);
      climateState = ClimateState('', false, false, response);
    } catch (e) {
      climateState = ClimateState(e.toString(), false, true, null);
    }

    notifyListeners();
  }
}
