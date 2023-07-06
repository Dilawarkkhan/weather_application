import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_application/core/themes/app_theme.dart';
import 'package:weather_application/models/weather_model.dart';
import 'package:weather_application/providers/weather_provider.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: GradientColor.weatherColor,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Consumer<WeatherProvider>(
            builder: (context, weatherProvider, _) {
              if (weatherProvider.weatherData == null) {
                return const CircularProgressIndicator();
              } else {
                // Convert the weather data to WeatherDataModel
                final WeatherDataModel weatherData =
                    WeatherDataModel.fromJson(weatherProvider.weatherData!);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${weatherData.name}, ${weatherData.country}',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Icon(
                      weatherProvider
                          .getWeatherIcon(weatherData.weatherCondition),
                      size: 64,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      weatherProvider.getWeatherConditionDescription(
                          weatherData.weatherCondition),
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Temperature: ${weatherProvider.kelvinToCelsius(weatherData.temperature).toStringAsFixed(2)}°C',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
