// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:weather_application/providers/weather_provider.dart';

// class WeeklyWeatherScreen extends StatelessWidget {
//   const WeeklyWeatherScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final weatherProvider = Provider.of<WeatherProvider>(context);
//     // final weatherDataList = weatherProvider.;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Weekly Weather'),
//       ),
//       body: ListView.builder(
//         itemCount: weatherDataList.length,
//         itemBuilder: (context, index) {
//           final weatherData = weatherDataList[index];

//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Card(
//               elevation: 2,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       '${weatherData.name}, ${weatherData.country}',
//                       style: const TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       children: [
//                         Icon(
//                           weatherProvider
//                               .getWeatherIcon(weatherData.weatherCondition),
//                           color: Colors.blue,
//                         ),
//                         const SizedBox(width: 8),
//                         Text(
//                           weatherProvider.getWeatherConditionDescription(
//                               weatherData.weatherCondition),
//                           style: const TextStyle(fontSize: 16),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       'Temperature: ${weatherData.temperature.toStringAsFixed(2)}°C',
//                       style: const TextStyle(fontSize: 16),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
