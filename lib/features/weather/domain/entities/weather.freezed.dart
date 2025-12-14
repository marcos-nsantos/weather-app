// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Weather {

 String get cityName; String get country; double get temperature; double get feelsLike; double get tempMin; double get tempMax; int get humidity; double get windSpeed; WeatherCondition get condition; String get description; int get pressure; int get visibility; int get cloudiness; DateTime get sunrise; DateTime get sunset; DateTime get timestamp;
/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherCopyWith<Weather> get copyWith => _$WeatherCopyWithImpl<Weather>(this as Weather, _$identity);

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Weather&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.country, country) || other.country == country)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.description, description) || other.description == description)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.cloudiness, cloudiness) || other.cloudiness == cloudiness)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityName,country,temperature,feelsLike,tempMin,tempMax,humidity,windSpeed,condition,description,pressure,visibility,cloudiness,sunrise,sunset,timestamp);

@override
String toString() {
  return 'Weather(cityName: $cityName, country: $country, temperature: $temperature, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, humidity: $humidity, windSpeed: $windSpeed, condition: $condition, description: $description, pressure: $pressure, visibility: $visibility, cloudiness: $cloudiness, sunrise: $sunrise, sunset: $sunset, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $WeatherCopyWith<$Res>  {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) _then) = _$WeatherCopyWithImpl;
@useResult
$Res call({
 String cityName, String country, double temperature, double feelsLike, double tempMin, double tempMax, int humidity, double windSpeed, WeatherCondition condition, String description, int pressure, int visibility, int cloudiness, DateTime sunrise, DateTime sunset, DateTime timestamp
});




}
/// @nodoc
class _$WeatherCopyWithImpl<$Res>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._self, this._then);

  final Weather _self;
  final $Res Function(Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cityName = null,Object? country = null,Object? temperature = null,Object? feelsLike = null,Object? tempMin = null,Object? tempMax = null,Object? humidity = null,Object? windSpeed = null,Object? condition = null,Object? description = null,Object? pressure = null,Object? visibility = null,Object? cloudiness = null,Object? sunrise = null,Object? sunset = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as WeatherCondition,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int,cloudiness: null == cloudiness ? _self.cloudiness : cloudiness // ignore: cast_nullable_to_non_nullable
as int,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as DateTime,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as DateTime,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Weather].
extension WeatherPatterns on Weather {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Weather value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Weather() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Weather value)  $default,){
final _that = this;
switch (_that) {
case _Weather():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Weather value)?  $default,){
final _that = this;
switch (_that) {
case _Weather() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cityName,  String country,  double temperature,  double feelsLike,  double tempMin,  double tempMax,  int humidity,  double windSpeed,  WeatherCondition condition,  String description,  int pressure,  int visibility,  int cloudiness,  DateTime sunrise,  DateTime sunset,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Weather() when $default != null:
return $default(_that.cityName,_that.country,_that.temperature,_that.feelsLike,_that.tempMin,_that.tempMax,_that.humidity,_that.windSpeed,_that.condition,_that.description,_that.pressure,_that.visibility,_that.cloudiness,_that.sunrise,_that.sunset,_that.timestamp);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cityName,  String country,  double temperature,  double feelsLike,  double tempMin,  double tempMax,  int humidity,  double windSpeed,  WeatherCondition condition,  String description,  int pressure,  int visibility,  int cloudiness,  DateTime sunrise,  DateTime sunset,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _Weather():
return $default(_that.cityName,_that.country,_that.temperature,_that.feelsLike,_that.tempMin,_that.tempMax,_that.humidity,_that.windSpeed,_that.condition,_that.description,_that.pressure,_that.visibility,_that.cloudiness,_that.sunrise,_that.sunset,_that.timestamp);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cityName,  String country,  double temperature,  double feelsLike,  double tempMin,  double tempMax,  int humidity,  double windSpeed,  WeatherCondition condition,  String description,  int pressure,  int visibility,  int cloudiness,  DateTime sunrise,  DateTime sunset,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _Weather() when $default != null:
return $default(_that.cityName,_that.country,_that.temperature,_that.feelsLike,_that.tempMin,_that.tempMax,_that.humidity,_that.windSpeed,_that.condition,_that.description,_that.pressure,_that.visibility,_that.cloudiness,_that.sunrise,_that.sunset,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Weather extends Weather {
  const _Weather({required this.cityName, required this.country, required this.temperature, required this.feelsLike, required this.tempMin, required this.tempMax, required this.humidity, required this.windSpeed, required this.condition, required this.description, required this.pressure, required this.visibility, required this.cloudiness, required this.sunrise, required this.sunset, required this.timestamp}): super._();
  factory _Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

@override final  String cityName;
@override final  String country;
@override final  double temperature;
@override final  double feelsLike;
@override final  double tempMin;
@override final  double tempMax;
@override final  int humidity;
@override final  double windSpeed;
@override final  WeatherCondition condition;
@override final  String description;
@override final  int pressure;
@override final  int visibility;
@override final  int cloudiness;
@override final  DateTime sunrise;
@override final  DateTime sunset;
@override final  DateTime timestamp;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherCopyWith<_Weather> get copyWith => __$WeatherCopyWithImpl<_Weather>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Weather&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.country, country) || other.country == country)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.description, description) || other.description == description)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.cloudiness, cloudiness) || other.cloudiness == cloudiness)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityName,country,temperature,feelsLike,tempMin,tempMax,humidity,windSpeed,condition,description,pressure,visibility,cloudiness,sunrise,sunset,timestamp);

@override
String toString() {
  return 'Weather(cityName: $cityName, country: $country, temperature: $temperature, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, humidity: $humidity, windSpeed: $windSpeed, condition: $condition, description: $description, pressure: $pressure, visibility: $visibility, cloudiness: $cloudiness, sunrise: $sunrise, sunset: $sunset, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) _then) = __$WeatherCopyWithImpl;
@override @useResult
$Res call({
 String cityName, String country, double temperature, double feelsLike, double tempMin, double tempMax, int humidity, double windSpeed, WeatherCondition condition, String description, int pressure, int visibility, int cloudiness, DateTime sunrise, DateTime sunset, DateTime timestamp
});




}
/// @nodoc
class __$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(this._self, this._then);

  final _Weather _self;
  final $Res Function(_Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cityName = null,Object? country = null,Object? temperature = null,Object? feelsLike = null,Object? tempMin = null,Object? tempMax = null,Object? humidity = null,Object? windSpeed = null,Object? condition = null,Object? description = null,Object? pressure = null,Object? visibility = null,Object? cloudiness = null,Object? sunrise = null,Object? sunset = null,Object? timestamp = null,}) {
  return _then(_Weather(
cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as WeatherCondition,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int,cloudiness: null == cloudiness ? _self.cloudiness : cloudiness // ignore: cast_nullable_to_non_nullable
as int,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as DateTime,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as DateTime,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
