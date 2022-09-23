import '../../model/model.dart';

class ClimateState {
  final ClimateModel? model;
  final bool isLoading;
  final String errorMenssage;
  final bool hasError;

  ClimateState(
    this.errorMenssage,
    this.isLoading,
    this.hasError,
    this.model,
  );
}
