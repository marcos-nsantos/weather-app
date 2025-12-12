class ApiConstants {
  ApiConstants._();

  static const String baseUrl = 'https://api.openweathermap.org/data/2.5';
  static const String currentWeatherEndpoint = '/weather';
  static const String forecastEndpoint = '/forecast';

  // Pass API key via --dart-define=OPENWEATHER_API_KEY=your_key
  static const String apiKey = String.fromEnvironment(
    'OPENWEATHER_API_KEY',
    defaultValue: '',
  );

  static const Duration timeout = Duration(seconds: 30);
}
