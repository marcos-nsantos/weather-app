import '../../../../core/constants/asset_paths.dart';

enum WeatherCondition {
  sunny,
  partlyCloudy,
  cloudy,
  rainy,
  heavyRain,
  thunderstorm,
  snowy,
  foggy,
  windy,
  unknown;

  /// Maps OpenWeatherMap condition codes to WeatherCondition
  static WeatherCondition fromCode(int code) {
    // Thunderstorm: 200-299
    if (code >= 200 && code < 300) return WeatherCondition.thunderstorm;

    // Drizzle: 300-399
    if (code >= 300 && code < 400) return WeatherCondition.rainy;

    // Rain: 500-599
    if (code >= 500 && code < 600) {
      if (code >= 502) return WeatherCondition.heavyRain;
      return WeatherCondition.rainy;
    }

    // Snow: 600-699
    if (code >= 600 && code < 700) return WeatherCondition.snowy;

    // Atmosphere (fog, mist, etc): 700-799
    if (code >= 700 && code < 800) return WeatherCondition.foggy;

    // Clear: 800
    if (code == 800) return WeatherCondition.sunny;

    // Clouds: 801-899
    if (code == 801) return WeatherCondition.partlyCloudy;
    if (code > 801) return WeatherCondition.cloudy;

    return WeatherCondition.unknown;
  }

  String getAnimationPath(bool isDay) {
    if (!isDay) {
      return switch (this) {
        WeatherCondition.sunny => AssetPaths.nightClear,
        WeatherCondition.partlyCloudy => AssetPaths.nightCloudy,
        WeatherCondition.cloudy => AssetPaths.nightCloudy,
        _ => _dayAnimationPath,
      };
    }
    return _dayAnimationPath;
  }

  String get _dayAnimationPath => switch (this) {
        WeatherCondition.sunny => AssetPaths.sunny,
        WeatherCondition.partlyCloudy => AssetPaths.partlyCloudy,
        WeatherCondition.cloudy => AssetPaths.cloudy,
        WeatherCondition.rainy => AssetPaths.rainy,
        WeatherCondition.heavyRain => AssetPaths.rainy,
        WeatherCondition.thunderstorm => AssetPaths.stormy,
        WeatherCondition.snowy => AssetPaths.snowy,
        WeatherCondition.foggy => AssetPaths.foggy,
        WeatherCondition.windy => AssetPaths.cloudy,
        WeatherCondition.unknown => AssetPaths.cloudy,
      };
}
