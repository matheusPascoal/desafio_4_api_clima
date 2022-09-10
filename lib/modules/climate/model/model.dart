class ModelClimate {
  final String temperature;
  final String wind;
  final String description;
  final List<Forecast> forecast;

  ModelClimate({
    required this.temperature,
    required this.wind,
    required this.description,
    required this.forecast,
  });

  // ModelClimate.fromJson(Map<String, dynamic> json) {
  //   temperature = json['temperature'] ?? '';
  //   wind = json['wind'] ?? '';
  //   description = json['description'] ?? '';
  //   // forecast = json['forecast'] ?? '';
  // }

  // ModelClimate.fromJson2(Map<String, dynamic> json)
  //     : temperature = json['temperature'],
  //       wind = json['wind'],
  //       description = json['description'];

  factory ModelClimate.fromMap(Map<String, dynamic> json) {
    return ModelClimate(
      temperature: json['temperature'],
      wind: json['wind'],
      description: json['description'],
      forecast:
          json['forecast'].map<Forecast>((e) => Forecast.fromMap(e)).toList(),
    );
  }
  @override
  String toString() {
    return 'ModelClimate: $temperature';
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
