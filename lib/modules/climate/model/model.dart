class ClimateModel {
  final String temperature;
  final String wind;
  final String description;
  final List<Forecast> forecast;

  ClimateModel({
    required this.temperature,
    required this.wind,
    required this.description,
    required this.forecast,
  });

  // ClimateModel.fromJson(Map<String, dynamic> json) {
  //   temperature = json['temperature'] ?? '';
  //   wind = json['wind'] ?? '';
  //   description = json['description'] ?? '';
  //   // forecast = json['forecast'] ?? '';
  // }

  // ClimateModel.fromJson2(Map<String, dynamic> json)
  //     : temperature = json['temperature'],
  //       wind = json['wind'],
  //       description = json['description'];

  factory ClimateModel.fromMap(Map<String, dynamic> json) {
    return ClimateModel(
      temperature: json['temperature'],
      wind: json['wind'],
      description: json['description'],
      forecast:
          json['forecast'].map<Forecast>((e) => Forecast.fromMap(e)).toList(),
    );
  }
  @override
  String toString() {
    return 'ClimateModel: $temperature';
  }
}

class Forecast {
  final String day;
  final String temperature;
  final String wind;

  Forecast({required this.day, required this.temperature, required this.wind});

  factory Forecast.fromMap(Map<String, dynamic> json) {
    return Forecast(
      temperature: json['temperature'],
      wind: json['wind'],
      day: json['day'],
    );
  }
}
