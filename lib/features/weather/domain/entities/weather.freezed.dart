// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  String get cityName => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get feelsLike => throw _privateConstructorUsedError;
  double get tempMin => throw _privateConstructorUsedError;
  double get tempMax => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  WeatherCondition get condition => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  int get cloudiness => throw _privateConstructorUsedError;
  DateTime get sunrise => throw _privateConstructorUsedError;
  DateTime get sunset => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({
    String cityName,
    String country,
    double temperature,
    double feelsLike,
    double tempMin,
    double tempMax,
    int humidity,
    double windSpeed,
    WeatherCondition condition,
    String description,
    int pressure,
    int visibility,
    int cloudiness,
    DateTime sunrise,
    DateTime sunset,
    DateTime timestamp,
  });
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? country = null,
    Object? temperature = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? condition = null,
    Object? description = null,
    Object? pressure = null,
    Object? visibility = null,
    Object? cloudiness = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            cityName: null == cityName
                ? _value.cityName
                : cityName // ignore: cast_nullable_to_non_nullable
                      as String,
            country: null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String,
            temperature: null == temperature
                ? _value.temperature
                : temperature // ignore: cast_nullable_to_non_nullable
                      as double,
            feelsLike: null == feelsLike
                ? _value.feelsLike
                : feelsLike // ignore: cast_nullable_to_non_nullable
                      as double,
            tempMin: null == tempMin
                ? _value.tempMin
                : tempMin // ignore: cast_nullable_to_non_nullable
                      as double,
            tempMax: null == tempMax
                ? _value.tempMax
                : tempMax // ignore: cast_nullable_to_non_nullable
                      as double,
            humidity: null == humidity
                ? _value.humidity
                : humidity // ignore: cast_nullable_to_non_nullable
                      as int,
            windSpeed: null == windSpeed
                ? _value.windSpeed
                : windSpeed // ignore: cast_nullable_to_non_nullable
                      as double,
            condition: null == condition
                ? _value.condition
                : condition // ignore: cast_nullable_to_non_nullable
                      as WeatherCondition,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            pressure: null == pressure
                ? _value.pressure
                : pressure // ignore: cast_nullable_to_non_nullable
                      as int,
            visibility: null == visibility
                ? _value.visibility
                : visibility // ignore: cast_nullable_to_non_nullable
                      as int,
            cloudiness: null == cloudiness
                ? _value.cloudiness
                : cloudiness // ignore: cast_nullable_to_non_nullable
                      as int,
            sunrise: null == sunrise
                ? _value.sunrise
                : sunrise // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            sunset: null == sunset
                ? _value.sunset
                : sunset // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
    _$WeatherImpl value,
    $Res Function(_$WeatherImpl) then,
  ) = __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String cityName,
    String country,
    double temperature,
    double feelsLike,
    double tempMin,
    double tempMax,
    int humidity,
    double windSpeed,
    WeatherCondition condition,
    String description,
    int pressure,
    int visibility,
    int cloudiness,
    DateTime sunrise,
    DateTime sunset,
    DateTime timestamp,
  });
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
    _$WeatherImpl _value,
    $Res Function(_$WeatherImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? country = null,
    Object? temperature = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? condition = null,
    Object? description = null,
    Object? pressure = null,
    Object? visibility = null,
    Object? cloudiness = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$WeatherImpl(
        cityName: null == cityName
            ? _value.cityName
            : cityName // ignore: cast_nullable_to_non_nullable
                  as String,
        country: null == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String,
        temperature: null == temperature
            ? _value.temperature
            : temperature // ignore: cast_nullable_to_non_nullable
                  as double,
        feelsLike: null == feelsLike
            ? _value.feelsLike
            : feelsLike // ignore: cast_nullable_to_non_nullable
                  as double,
        tempMin: null == tempMin
            ? _value.tempMin
            : tempMin // ignore: cast_nullable_to_non_nullable
                  as double,
        tempMax: null == tempMax
            ? _value.tempMax
            : tempMax // ignore: cast_nullable_to_non_nullable
                  as double,
        humidity: null == humidity
            ? _value.humidity
            : humidity // ignore: cast_nullable_to_non_nullable
                  as int,
        windSpeed: null == windSpeed
            ? _value.windSpeed
            : windSpeed // ignore: cast_nullable_to_non_nullable
                  as double,
        condition: null == condition
            ? _value.condition
            : condition // ignore: cast_nullable_to_non_nullable
                  as WeatherCondition,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        pressure: null == pressure
            ? _value.pressure
            : pressure // ignore: cast_nullable_to_non_nullable
                  as int,
        visibility: null == visibility
            ? _value.visibility
            : visibility // ignore: cast_nullable_to_non_nullable
                  as int,
        cloudiness: null == cloudiness
            ? _value.cloudiness
            : cloudiness // ignore: cast_nullable_to_non_nullable
                  as int,
        sunrise: null == sunrise
            ? _value.sunrise
            : sunrise // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        sunset: null == sunset
            ? _value.sunset
            : sunset // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherImpl extends _Weather {
  const _$WeatherImpl({
    required this.cityName,
    required this.country,
    required this.temperature,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.humidity,
    required this.windSpeed,
    required this.condition,
    required this.description,
    required this.pressure,
    required this.visibility,
    required this.cloudiness,
    required this.sunrise,
    required this.sunset,
    required this.timestamp,
  }) : super._();

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  final String cityName;
  @override
  final String country;
  @override
  final double temperature;
  @override
  final double feelsLike;
  @override
  final double tempMin;
  @override
  final double tempMax;
  @override
  final int humidity;
  @override
  final double windSpeed;
  @override
  final WeatherCondition condition;
  @override
  final String description;
  @override
  final int pressure;
  @override
  final int visibility;
  @override
  final int cloudiness;
  @override
  final DateTime sunrise;
  @override
  final DateTime sunset;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'Weather(cityName: $cityName, country: $country, temperature: $temperature, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, humidity: $humidity, windSpeed: $windSpeed, condition: $condition, description: $description, pressure: $pressure, visibility: $visibility, cloudiness: $cloudiness, sunrise: $sunrise, sunset: $sunset, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.cloudiness, cloudiness) ||
                other.cloudiness == cloudiness) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    cityName,
    country,
    temperature,
    feelsLike,
    tempMin,
    tempMax,
    humidity,
    windSpeed,
    condition,
    description,
    pressure,
    visibility,
    cloudiness,
    sunrise,
    sunset,
    timestamp,
  );

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(this);
  }
}

abstract class _Weather extends Weather {
  const factory _Weather({
    required final String cityName,
    required final String country,
    required final double temperature,
    required final double feelsLike,
    required final double tempMin,
    required final double tempMax,
    required final int humidity,
    required final double windSpeed,
    required final WeatherCondition condition,
    required final String description,
    required final int pressure,
    required final int visibility,
    required final int cloudiness,
    required final DateTime sunrise,
    required final DateTime sunset,
    required final DateTime timestamp,
  }) = _$WeatherImpl;
  const _Weather._() : super._();

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  String get cityName;
  @override
  String get country;
  @override
  double get temperature;
  @override
  double get feelsLike;
  @override
  double get tempMin;
  @override
  double get tempMax;
  @override
  int get humidity;
  @override
  double get windSpeed;
  @override
  WeatherCondition get condition;
  @override
  String get description;
  @override
  int get pressure;
  @override
  int get visibility;
  @override
  int get cloudiness;
  @override
  DateTime get sunrise;
  @override
  DateTime get sunset;
  @override
  DateTime get timestamp;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
