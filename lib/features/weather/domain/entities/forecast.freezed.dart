// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Forecast {

 List<ForecastItem> get items; String get cityName;
/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastCopyWith<Forecast> get copyWith => _$ForecastCopyWithImpl<Forecast>(this as Forecast, _$identity);

  /// Serializes this Forecast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Forecast&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.cityName, cityName) || other.cityName == cityName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),cityName);

@override
String toString() {
  return 'Forecast(items: $items, cityName: $cityName)';
}


}

/// @nodoc
abstract mixin class $ForecastCopyWith<$Res>  {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) _then) = _$ForecastCopyWithImpl;
@useResult
$Res call({
 List<ForecastItem> items, String cityName
});




}
/// @nodoc
class _$ForecastCopyWithImpl<$Res>
    implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._self, this._then);

  final Forecast _self;
  final $Res Function(Forecast) _then;

/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? cityName = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ForecastItem>,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Forecast].
extension ForecastPatterns on Forecast {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Forecast value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Forecast() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Forecast value)  $default,){
final _that = this;
switch (_that) {
case _Forecast():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Forecast value)?  $default,){
final _that = this;
switch (_that) {
case _Forecast() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ForecastItem> items,  String cityName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Forecast() when $default != null:
return $default(_that.items,_that.cityName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ForecastItem> items,  String cityName)  $default,) {final _that = this;
switch (_that) {
case _Forecast():
return $default(_that.items,_that.cityName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ForecastItem> items,  String cityName)?  $default,) {final _that = this;
switch (_that) {
case _Forecast() when $default != null:
return $default(_that.items,_that.cityName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Forecast implements Forecast {
  const _Forecast({required final  List<ForecastItem> items, required this.cityName}): _items = items;
  factory _Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);

 final  List<ForecastItem> _items;
@override List<ForecastItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String cityName;

/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastCopyWith<_Forecast> get copyWith => __$ForecastCopyWithImpl<_Forecast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Forecast&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.cityName, cityName) || other.cityName == cityName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),cityName);

@override
String toString() {
  return 'Forecast(items: $items, cityName: $cityName)';
}


}

/// @nodoc
abstract mixin class _$ForecastCopyWith<$Res> implements $ForecastCopyWith<$Res> {
  factory _$ForecastCopyWith(_Forecast value, $Res Function(_Forecast) _then) = __$ForecastCopyWithImpl;
@override @useResult
$Res call({
 List<ForecastItem> items, String cityName
});




}
/// @nodoc
class __$ForecastCopyWithImpl<$Res>
    implements _$ForecastCopyWith<$Res> {
  __$ForecastCopyWithImpl(this._self, this._then);

  final _Forecast _self;
  final $Res Function(_Forecast) _then;

/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? cityName = null,}) {
  return _then(_Forecast(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ForecastItem>,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ForecastItem {

 DateTime get dateTime; double get temperature; double get tempMin; double get tempMax; WeatherCondition get condition; String get description; int get humidity; double get windSpeed;
/// Create a copy of ForecastItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastItemCopyWith<ForecastItem> get copyWith => _$ForecastItemCopyWithImpl<ForecastItem>(this as ForecastItem, _$identity);

  /// Serializes this ForecastItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastItem&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.description, description) || other.description == description)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dateTime,temperature,tempMin,tempMax,condition,description,humidity,windSpeed);

@override
String toString() {
  return 'ForecastItem(dateTime: $dateTime, temperature: $temperature, tempMin: $tempMin, tempMax: $tempMax, condition: $condition, description: $description, humidity: $humidity, windSpeed: $windSpeed)';
}


}

/// @nodoc
abstract mixin class $ForecastItemCopyWith<$Res>  {
  factory $ForecastItemCopyWith(ForecastItem value, $Res Function(ForecastItem) _then) = _$ForecastItemCopyWithImpl;
@useResult
$Res call({
 DateTime dateTime, double temperature, double tempMin, double tempMax, WeatherCondition condition, String description, int humidity, double windSpeed
});




}
/// @nodoc
class _$ForecastItemCopyWithImpl<$Res>
    implements $ForecastItemCopyWith<$Res> {
  _$ForecastItemCopyWithImpl(this._self, this._then);

  final ForecastItem _self;
  final $Res Function(ForecastItem) _then;

/// Create a copy of ForecastItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dateTime = null,Object? temperature = null,Object? tempMin = null,Object? tempMax = null,Object? condition = null,Object? description = null,Object? humidity = null,Object? windSpeed = null,}) {
  return _then(_self.copyWith(
dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as WeatherCondition,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ForecastItem].
extension ForecastItemPatterns on ForecastItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForecastItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForecastItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForecastItem value)  $default,){
final _that = this;
switch (_that) {
case _ForecastItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForecastItem value)?  $default,){
final _that = this;
switch (_that) {
case _ForecastItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime dateTime,  double temperature,  double tempMin,  double tempMax,  WeatherCondition condition,  String description,  int humidity,  double windSpeed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForecastItem() when $default != null:
return $default(_that.dateTime,_that.temperature,_that.tempMin,_that.tempMax,_that.condition,_that.description,_that.humidity,_that.windSpeed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime dateTime,  double temperature,  double tempMin,  double tempMax,  WeatherCondition condition,  String description,  int humidity,  double windSpeed)  $default,) {final _that = this;
switch (_that) {
case _ForecastItem():
return $default(_that.dateTime,_that.temperature,_that.tempMin,_that.tempMax,_that.condition,_that.description,_that.humidity,_that.windSpeed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime dateTime,  double temperature,  double tempMin,  double tempMax,  WeatherCondition condition,  String description,  int humidity,  double windSpeed)?  $default,) {final _that = this;
switch (_that) {
case _ForecastItem() when $default != null:
return $default(_that.dateTime,_that.temperature,_that.tempMin,_that.tempMax,_that.condition,_that.description,_that.humidity,_that.windSpeed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForecastItem extends ForecastItem {
  const _ForecastItem({required this.dateTime, required this.temperature, required this.tempMin, required this.tempMax, required this.condition, required this.description, required this.humidity, required this.windSpeed}): super._();
  factory _ForecastItem.fromJson(Map<String, dynamic> json) => _$ForecastItemFromJson(json);

@override final  DateTime dateTime;
@override final  double temperature;
@override final  double tempMin;
@override final  double tempMax;
@override final  WeatherCondition condition;
@override final  String description;
@override final  int humidity;
@override final  double windSpeed;

/// Create a copy of ForecastItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastItemCopyWith<_ForecastItem> get copyWith => __$ForecastItemCopyWithImpl<_ForecastItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastItem&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.description, description) || other.description == description)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dateTime,temperature,tempMin,tempMax,condition,description,humidity,windSpeed);

@override
String toString() {
  return 'ForecastItem(dateTime: $dateTime, temperature: $temperature, tempMin: $tempMin, tempMax: $tempMax, condition: $condition, description: $description, humidity: $humidity, windSpeed: $windSpeed)';
}


}

/// @nodoc
abstract mixin class _$ForecastItemCopyWith<$Res> implements $ForecastItemCopyWith<$Res> {
  factory _$ForecastItemCopyWith(_ForecastItem value, $Res Function(_ForecastItem) _then) = __$ForecastItemCopyWithImpl;
@override @useResult
$Res call({
 DateTime dateTime, double temperature, double tempMin, double tempMax, WeatherCondition condition, String description, int humidity, double windSpeed
});




}
/// @nodoc
class __$ForecastItemCopyWithImpl<$Res>
    implements _$ForecastItemCopyWith<$Res> {
  __$ForecastItemCopyWithImpl(this._self, this._then);

  final _ForecastItem _self;
  final $Res Function(_ForecastItem) _then;

/// Create a copy of ForecastItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dateTime = null,Object? temperature = null,Object? tempMin = null,Object? tempMax = null,Object? condition = null,Object? description = null,Object? humidity = null,Object? windSpeed = null,}) {
  return _then(_ForecastItem(
dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as WeatherCondition,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
