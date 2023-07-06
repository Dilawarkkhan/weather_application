import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_application/views/home_screen.dart';
import 'package:weather_application/providers/weather_provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WeatherProvider(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
