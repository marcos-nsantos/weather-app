# Weather App

A beautiful Flutter weather application with dynamic animations and themes.

## Features

- **Current Weather**: Real-time weather data for your location
- **5-Day Forecast**: Extended weather forecast
- **Animated Weather**: Lottie animations for different weather conditions
- **Dynamic Theme**: Automatic day/night theme based on sunrise/sunset
- **City Search**: Search weather for any city worldwide
- **Geolocation**: Automatic location detection
- **Offline Cache**: View last weather data when offline
- **Unit Settings**: Toggle between Celsius/Fahrenheit and wind speed units (m/s, km/h, mph)

## Screenshots

The app features beautiful gradient backgrounds that change based on:
- Time of day (day/night)
- Weather condition (sunny, cloudy, rainy, etc.)

## Setup

### 1. Get an API Key

1. Go to [OpenWeatherMap](https://openweathermap.org/api)
2. Create a free account
3. Generate an API key

### 2. Run the App

```bash
# Install dependencies
flutter pub get

# Generate code (Freezed, Riverpod)
dart run build_runner build --delete-conflicting-outputs

# Run with API key
flutter run --dart-define=OPENWEATHER_API_KEY=your_api_key_here
```

### 3. Build for Release

```bash
# Android
flutter build apk --dart-define=OPENWEATHER_API_KEY=your_api_key_here

# iOS
flutter build ios --dart-define=OPENWEATHER_API_KEY=your_api_key_here
```

## Architecture

```
lib/
├── core/           # Constants, errors, network, theme, utils
├── features/       # Feature modules (weather, location, settings)
│   ├── data/       # Models, datasources, repository implementations
│   ├── domain/     # Entities, repository interfaces
│   └── presentation/ # Providers, screens, widgets
├── routing/        # go_router configuration
└── shared/         # Shared widgets and providers
```

## Tech Stack

- **State Management**: Riverpod with code generation
- **Routing**: go_router
- **Networking**: Dio
- **Animations**: Lottie
- **Code Generation**: Freezed, json_serializable
- **Geolocation**: geolocator

## Weather Animations

The app includes animated weather icons for:
- ☀️ Sunny
- ⛅ Partly Cloudy
- ☁️ Cloudy
- 🌧️ Rainy
- ⛈️ Stormy
- ❄️ Snowy
- 🌫️ Foggy
- 🌙 Night Clear
- 🌙☁️ Night Cloudy

## Permissions

### Android
- `ACCESS_FINE_LOCATION`
- `ACCESS_COARSE_LOCATION`
- `INTERNET`

### iOS
- `NSLocationWhenInUseUsageDescription`
- `NSLocationAlwaysUsageDescription`

## License

MIT
