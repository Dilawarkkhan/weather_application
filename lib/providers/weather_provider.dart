import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weather_application/core/env/env.dart';
import 'package:weather_application/core/services/location_service.dart';

class WeatherProvider extends ChangeNotifier {
  Map<String, dynamic>? weatherData;

  WeatherProvider() {
    fetchWeatherData();
  }

  Future<void> fetchWeatherData() async {
    final locationGetter = LocationGetter();
    final position = await locationGetter.getCurrentLocation();

    final apiUrl = AppUrls.getWeatherUrl(
      position.latitude,
      position.longitude,
    );
   
    try {
      final response = await http.get(Uri.parse(apiUrl)); 

      if (response.statusCode == 200) {
        final decodedData = json.decode(response.body);
        weatherData = decodedData;
      } else {
        throw Exception('Failed to fetch weather data');
      }
    } catch (e) {
      throw Exception('Failed to connect to the weather API');
    }

    notifyListeners();
  }

  double kelvinToCelsius(double temperatureInKelvin) {
    return temperatureInKelvin - 273.15;
  }

  IconData getWeatherIcon(String weatherCondition) {
    switch (weatherCondition) {
      case 'Clear':
        return Icons.wb_sunny;
      case 'Clouds':
        return Icons.cloud;
      case 'Rain':
        return Icons.beach_access;
      default:
        return Icons.wb_sunny;
    }
  }

  String getWeatherConditionDescription(String weatherCondition) {
    switch (weatherCondition) {
      case 'Clear':
        return 'Clear Sky';
      case 'Clouds':
        return 'Cloudy';
      case 'Rain':
        return 'Rainy';
      default:
        return '';
    }
  }
}
