import 'package:flutter/material.dart';
import 'package:weather_application/core/themes/app_theme.dart';
import 'package:weather_application/views/weather_screen.dart';
import 'package:weather_application/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(0, 65),
        child: CustomAppBar(),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppThemes.appGradient,
        ),
        child: const WeatherScreen(),
      ),
    );
  }
}
