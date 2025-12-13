# Weather App

![Tests](https://img.shields.io/badge/tests-165%20passing-brightgreen)
![Coverage](https://img.shields.io/badge/coverage-48.8%25-yellow)
![Flutter](https://img.shields.io/badge/Flutter-3.0+-blue)

A Flutter weather application with dynamic animations and themes.

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
# Initial setup
make setup

# Run with API key
OPENWEATHER_API_KEY=your_key make run
```

Or without Make:
```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run --dart-define=OPENWEATHER_API_KEY=your_key
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

## Development

```bash
make help      # Show all commands
make setup     # Install deps + generate code
make test      # Run tests
make coverage  # Tests + coverage report
make format    # Format code
make analyze   # Static analysis
```

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
