class WeatherDataModel {
  final String name;
  final String country;
  final String weatherCondition;
  final double temperature;

  WeatherDataModel({
    required this.name,
    required this.country,
    required this.weatherCondition,
    required this.temperature,
  });

  factory WeatherDataModel.fromJson(Map<String, dynamic> json) {
    return WeatherDataModel(
      name: json['name'],
      country: json['sys']['country'],
      weatherCondition: json['weather'][0]['main'],
      temperature: json['main']['temp'].toDouble(),
    );
  }
}
