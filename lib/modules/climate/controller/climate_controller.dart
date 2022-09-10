import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uno/uno.dart';

import '../../../shared/service/service.dart';
import '../model/model.dart';

class ClimateController extends ChangeNotifier {
  ServiceApi serviceApi = ServiceApi(Uno());
  final controller = ClimateController();

  ModelClimate? model;

  var isLoading = false;
  var hasData = false;
  var hasError = false;

  Future<void> getClimate() async {
    final response = await serviceApi.get('Betim');
    print(response);
    model = response;

    notifyListeners();
  }
}
