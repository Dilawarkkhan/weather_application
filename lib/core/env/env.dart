class AppUrls {
  static const String apiKey = '878ec63549000258ef00bb14ae95bfed';

  static String getWeatherUrl(double latitude, double longitude) {
    return 'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey';
  }

  static String getWeeklyWeatherUrl(String cityName) {
    return 'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&appid=$apiKey';
  }

  static String getWeatherByCityUrl(double latitude, double longitude) {
    return 'https://api.openweathermap.org/data/2.5/forecast?lat=$latitude&lon=$longitude&appid=$apiKey';
  }
}
