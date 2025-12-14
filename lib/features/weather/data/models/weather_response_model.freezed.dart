// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherResponseModel {

 MainData get main; List<WeatherData> get weather; WindData get wind; CloudsData get clouds; SysData get sys; int get visibility; String get name; int get dt;
/// Create a copy of WeatherResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherResponseModelCopyWith<WeatherResponseModel> get copyWith => _$WeatherResponseModelCopyWithImpl<WeatherResponseModel>(this as WeatherResponseModel, _$identity);

  /// Serializes this WeatherResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherResponseModel&&(identical(other.main, main) || other.main == main)&&const DeepCollectionEquality().equals(other.weather, weather)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.sys, sys) || other.sys == sys)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.name, name) || other.name == name)&&(identical(other.dt, dt) || other.dt == dt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,main,const DeepCollectionEquality().hash(weather),wind,clouds,sys,visibility,name,dt);

@override
String toString() {
  return 'WeatherResponseModel(main: $main, weather: $weather, wind: $wind, clouds: $clouds, sys: $sys, visibility: $visibility, name: $name, dt: $dt)';
}


}

/// @nodoc
abstract mixin class $WeatherResponseModelCopyWith<$Res>  {
  factory $WeatherResponseModelCopyWith(WeatherResponseModel value, $Res Function(WeatherResponseModel) _then) = _$WeatherResponseModelCopyWithImpl;
@useResult
$Res call({
 MainData main, List<WeatherData> weather, WindData wind, CloudsData clouds, SysData sys, int visibility, String name, int dt
});


$MainDataCopyWith<$Res> get main;$WindDataCopyWith<$Res> get wind;$CloudsDataCopyWith<$Res> get clouds;$SysDataCopyWith<$Res> get sys;

}
/// @nodoc
class _$WeatherResponseModelCopyWithImpl<$Res>
    implements $WeatherResponseModelCopyWith<$Res> {
  _$WeatherResponseModelCopyWithImpl(this._self, this._then);

  final WeatherResponseModel _self;
  final $Res Function(WeatherResponseModel) _then;

/// Create a copy of WeatherResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? main = null,Object? weather = null,Object? wind = null,Object? clouds = null,Object? sys = null,Object? visibility = null,Object? name = null,Object? dt = null,}) {
  return _then(_self.copyWith(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as MainData,weather: null == weather ? _self.weather : weather // ignore: cast_nullable_to_non_nullable
as List<WeatherData>,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as WindData,clouds: null == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as CloudsData,sys: null == sys ? _self.sys : sys // ignore: cast_nullable_to_non_nullable
as SysData,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dt: null == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of WeatherResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainDataCopyWith<$Res> get main {
  
  return $MainDataCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of WeatherResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindDataCopyWith<$Res> get wind {
  
  return $WindDataCopyWith<$Res>(_self.wind, (value) {
    return _then(_self.copyWith(wind: value));
  });
}/// Create a copy of WeatherResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CloudsDataCopyWith<$Res> get clouds {
  
  return $CloudsDataCopyWith<$Res>(_self.clouds, (value) {
    return _then(_self.copyWith(clouds: value));
  });
}/// Create a copy of WeatherResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SysDataCopyWith<$Res> get sys {
  
  return $SysDataCopyWith<$Res>(_self.sys, (value) {
    return _then(_self.copyWith(sys: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherResponseModel].
extension WeatherResponseModelPatterns on WeatherResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _WeatherResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MainData main,  List<WeatherData> weather,  WindData wind,  CloudsData clouds,  SysData sys,  int visibility,  String name,  int dt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherResponseModel() when $default != null:
return $default(_that.main,_that.weather,_that.wind,_that.clouds,_that.sys,_that.visibility,_that.name,_that.dt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MainData main,  List<WeatherData> weather,  WindData wind,  CloudsData clouds,  SysData sys,  int visibility,  String name,  int dt)  $default,) {final _that = this;
switch (_that) {
case _WeatherResponseModel():
return $default(_that.main,_that.weather,_that.wind,_that.clouds,_that.sys,_that.visibility,_that.name,_that.dt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MainData main,  List<WeatherData> weather,  WindData wind,  CloudsData clouds,  SysData sys,  int visibility,  String name,  int dt)?  $default,) {final _that = this;
switch (_that) {
case _WeatherResponseModel() when $default != null:
return $default(_that.main,_that.weather,_that.wind,_that.clouds,_that.sys,_that.visibility,_that.name,_that.dt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherResponseModel extends WeatherResponseModel {
  const _WeatherResponseModel({required this.main, required final  List<WeatherData> weather, required this.wind, required this.clouds, required this.sys, required this.visibility, required this.name, required this.dt}): _weather = weather,super._();
  factory _WeatherResponseModel.fromJson(Map<String, dynamic> json) => _$WeatherResponseModelFromJson(json);

@override final  MainData main;
 final  List<WeatherData> _weather;
@override List<WeatherData> get weather {
  if (_weather is EqualUnmodifiableListView) return _weather;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weather);
}

@override final  WindData wind;
@override final  CloudsData clouds;
@override final  SysData sys;
@override final  int visibility;
@override final  String name;
@override final  int dt;

/// Create a copy of WeatherResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherResponseModelCopyWith<_WeatherResponseModel> get copyWith => __$WeatherResponseModelCopyWithImpl<_WeatherResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherResponseModel&&(identical(other.main, main) || other.main == main)&&const DeepCollectionEquality().equals(other._weather, _weather)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.sys, sys) || other.sys == sys)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.name, name) || other.name == name)&&(identical(other.dt, dt) || other.dt == dt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,main,const DeepCollectionEquality().hash(_weather),wind,clouds,sys,visibility,name,dt);

@override
String toString() {
  return 'WeatherResponseModel(main: $main, weather: $weather, wind: $wind, clouds: $clouds, sys: $sys, visibility: $visibility, name: $name, dt: $dt)';
}


}

/// @nodoc
abstract mixin class _$WeatherResponseModelCopyWith<$Res> implements $WeatherResponseModelCopyWith<$Res> {
  factory _$WeatherResponseModelCopyWith(_WeatherResponseModel value, $Res Function(_WeatherResponseModel) _then) = __$WeatherResponseModelCopyWithImpl;
@override @useResult
$Res call({
 MainData main, List<WeatherData> weather, WindData wind, CloudsData clouds, SysData sys, int visibility, String name, int dt
});


@override $MainDataCopyWith<$Res> get main;@override $WindDataCopyWith<$Res> get wind;@override $CloudsDataCopyWith<$Res> get clouds;@override $SysDataCopyWith<$Res> get sys;

}
/// @nodoc
class __$WeatherResponseModelCopyWithImpl<$Res>
    implements _$WeatherResponseModelCopyWith<$Res> {
  __$WeatherResponseModelCopyWithImpl(this._self, this._then);

  final _WeatherResponseModel _self;
  final $Res Function(_WeatherResponseModel) _then;

/// Create a copy of WeatherResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? main = null,Object? weather = null,Object? wind = null,Object? clouds = null,Object? sys = null,Object? visibility = null,Object? name = null,Object? dt = null,}) {
  return _then(_WeatherResponseModel(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as MainData,weather: null == weather ? _self._weather : weather // ignore: cast_nullable_to_non_nullable
as List<WeatherData>,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as WindData,clouds: null == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as CloudsData,sys: null == sys ? _self.sys : sys // ignore: cast_nullable_to_non_nullable
as SysData,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dt: null == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of WeatherResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainDataCopyWith<$Res> get main {
  
  return $MainDataCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of WeatherResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindDataCopyWith<$Res> get wind {
  
  return $WindDataCopyWith<$Res>(_self.wind, (value) {
    return _then(_self.copyWith(wind: value));
  });
}/// Create a copy of WeatherResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CloudsDataCopyWith<$Res> get clouds {
  
  return $CloudsDataCopyWith<$Res>(_self.clouds, (value) {
    return _then(_self.copyWith(clouds: value));
  });
}/// Create a copy of WeatherResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SysDataCopyWith<$Res> get sys {
  
  return $SysDataCopyWith<$Res>(_self.sys, (value) {
    return _then(_self.copyWith(sys: value));
  });
}
}


/// @nodoc
mixin _$MainData {

 double get temp; double get feelsLike; double get tempMin; double get tempMax; int get pressure; int get humidity;
/// Create a copy of MainData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainDataCopyWith<MainData> get copyWith => _$MainDataCopyWithImpl<MainData>(this as MainData, _$identity);

  /// Serializes this MainData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainData&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,feelsLike,tempMin,tempMax,pressure,humidity);

@override
String toString() {
  return 'MainData(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class $MainDataCopyWith<$Res>  {
  factory $MainDataCopyWith(MainData value, $Res Function(MainData) _then) = _$MainDataCopyWithImpl;
@useResult
$Res call({
 double temp, double feelsLike, double tempMin, double tempMax, int pressure, int humidity
});




}
/// @nodoc
class _$MainDataCopyWithImpl<$Res>
    implements $MainDataCopyWith<$Res> {
  _$MainDataCopyWithImpl(this._self, this._then);

  final MainData _self;
  final $Res Function(MainData) _then;

/// Create a copy of MainData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temp = null,Object? feelsLike = null,Object? tempMin = null,Object? tempMax = null,Object? pressure = null,Object? humidity = null,}) {
  return _then(_self.copyWith(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MainData].
extension MainDataPatterns on MainData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainData value)  $default,){
final _that = this;
switch (_that) {
case _MainData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainData value)?  $default,){
final _that = this;
switch (_that) {
case _MainData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double temp,  double feelsLike,  double tempMin,  double tempMax,  int pressure,  int humidity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainData() when $default != null:
return $default(_that.temp,_that.feelsLike,_that.tempMin,_that.tempMax,_that.pressure,_that.humidity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double temp,  double feelsLike,  double tempMin,  double tempMax,  int pressure,  int humidity)  $default,) {final _that = this;
switch (_that) {
case _MainData():
return $default(_that.temp,_that.feelsLike,_that.tempMin,_that.tempMax,_that.pressure,_that.humidity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double temp,  double feelsLike,  double tempMin,  double tempMax,  int pressure,  int humidity)?  $default,) {final _that = this;
switch (_that) {
case _MainData() when $default != null:
return $default(_that.temp,_that.feelsLike,_that.tempMin,_that.tempMax,_that.pressure,_that.humidity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MainData implements MainData {
  const _MainData({required this.temp, required this.feelsLike, required this.tempMin, required this.tempMax, required this.pressure, required this.humidity});
  factory _MainData.fromJson(Map<String, dynamic> json) => _$MainDataFromJson(json);

@override final  double temp;
@override final  double feelsLike;
@override final  double tempMin;
@override final  double tempMax;
@override final  int pressure;
@override final  int humidity;

/// Create a copy of MainData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainDataCopyWith<_MainData> get copyWith => __$MainDataCopyWithImpl<_MainData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainData&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,feelsLike,tempMin,tempMax,pressure,humidity);

@override
String toString() {
  return 'MainData(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class _$MainDataCopyWith<$Res> implements $MainDataCopyWith<$Res> {
  factory _$MainDataCopyWith(_MainData value, $Res Function(_MainData) _then) = __$MainDataCopyWithImpl;
@override @useResult
$Res call({
 double temp, double feelsLike, double tempMin, double tempMax, int pressure, int humidity
});




}
/// @nodoc
class __$MainDataCopyWithImpl<$Res>
    implements _$MainDataCopyWith<$Res> {
  __$MainDataCopyWithImpl(this._self, this._then);

  final _MainData _self;
  final $Res Function(_MainData) _then;

/// Create a copy of MainData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temp = null,Object? feelsLike = null,Object? tempMin = null,Object? tempMax = null,Object? pressure = null,Object? humidity = null,}) {
  return _then(_MainData(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WeatherData {

 int get id; String get main; String get description; String get icon;
/// Create a copy of WeatherData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherDataCopyWith<WeatherData> get copyWith => _$WeatherDataCopyWithImpl<WeatherData>(this as WeatherData, _$identity);

  /// Serializes this WeatherData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherData&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description,icon);

@override
String toString() {
  return 'WeatherData(id: $id, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WeatherDataCopyWith<$Res>  {
  factory $WeatherDataCopyWith(WeatherData value, $Res Function(WeatherData) _then) = _$WeatherDataCopyWithImpl;
@useResult
$Res call({
 int id, String main, String description, String icon
});




}
/// @nodoc
class _$WeatherDataCopyWithImpl<$Res>
    implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._self, this._then);

  final WeatherData _self;
  final $Res Function(WeatherData) _then;

/// Create a copy of WeatherData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? main = null,Object? description = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherData].
extension WeatherDataPatterns on WeatherData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherData value)  $default,){
final _that = this;
switch (_that) {
case _WeatherData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherData value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String main,  String description,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherData() when $default != null:
return $default(_that.id,_that.main,_that.description,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String main,  String description,  String icon)  $default,) {final _that = this;
switch (_that) {
case _WeatherData():
return $default(_that.id,_that.main,_that.description,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String main,  String description,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _WeatherData() when $default != null:
return $default(_that.id,_that.main,_that.description,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherData implements WeatherData {
  const _WeatherData({required this.id, required this.main, required this.description, required this.icon});
  factory _WeatherData.fromJson(Map<String, dynamic> json) => _$WeatherDataFromJson(json);

@override final  int id;
@override final  String main;
@override final  String description;
@override final  String icon;

/// Create a copy of WeatherData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherDataCopyWith<_WeatherData> get copyWith => __$WeatherDataCopyWithImpl<_WeatherData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherData&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description,icon);

@override
String toString() {
  return 'WeatherData(id: $id, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WeatherDataCopyWith<$Res> implements $WeatherDataCopyWith<$Res> {
  factory _$WeatherDataCopyWith(_WeatherData value, $Res Function(_WeatherData) _then) = __$WeatherDataCopyWithImpl;
@override @useResult
$Res call({
 int id, String main, String description, String icon
});




}
/// @nodoc
class __$WeatherDataCopyWithImpl<$Res>
    implements _$WeatherDataCopyWith<$Res> {
  __$WeatherDataCopyWithImpl(this._self, this._then);

  final _WeatherData _self;
  final $Res Function(_WeatherData) _then;

/// Create a copy of WeatherData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? main = null,Object? description = null,Object? icon = null,}) {
  return _then(_WeatherData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$WindData {

 double get speed; int get deg;
/// Create a copy of WindData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WindDataCopyWith<WindData> get copyWith => _$WindDataCopyWithImpl<WindData>(this as WindData, _$identity);

  /// Serializes this WindData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WindData&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.deg, deg) || other.deg == deg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed,deg);

@override
String toString() {
  return 'WindData(speed: $speed, deg: $deg)';
}


}

/// @nodoc
abstract mixin class $WindDataCopyWith<$Res>  {
  factory $WindDataCopyWith(WindData value, $Res Function(WindData) _then) = _$WindDataCopyWithImpl;
@useResult
$Res call({
 double speed, int deg
});




}
/// @nodoc
class _$WindDataCopyWithImpl<$Res>
    implements $WindDataCopyWith<$Res> {
  _$WindDataCopyWithImpl(this._self, this._then);

  final WindData _self;
  final $Res Function(WindData) _then;

/// Create a copy of WindData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? speed = null,Object? deg = null,}) {
  return _then(_self.copyWith(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,deg: null == deg ? _self.deg : deg // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WindData].
extension WindDataPatterns on WindData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WindData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WindData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WindData value)  $default,){
final _that = this;
switch (_that) {
case _WindData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WindData value)?  $default,){
final _that = this;
switch (_that) {
case _WindData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double speed,  int deg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WindData() when $default != null:
return $default(_that.speed,_that.deg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double speed,  int deg)  $default,) {final _that = this;
switch (_that) {
case _WindData():
return $default(_that.speed,_that.deg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double speed,  int deg)?  $default,) {final _that = this;
switch (_that) {
case _WindData() when $default != null:
return $default(_that.speed,_that.deg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WindData implements WindData {
  const _WindData({required this.speed, this.deg = 0});
  factory _WindData.fromJson(Map<String, dynamic> json) => _$WindDataFromJson(json);

@override final  double speed;
@override@JsonKey() final  int deg;

/// Create a copy of WindData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WindDataCopyWith<_WindData> get copyWith => __$WindDataCopyWithImpl<_WindData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WindDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WindData&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.deg, deg) || other.deg == deg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed,deg);

@override
String toString() {
  return 'WindData(speed: $speed, deg: $deg)';
}


}

/// @nodoc
abstract mixin class _$WindDataCopyWith<$Res> implements $WindDataCopyWith<$Res> {
  factory _$WindDataCopyWith(_WindData value, $Res Function(_WindData) _then) = __$WindDataCopyWithImpl;
@override @useResult
$Res call({
 double speed, int deg
});




}
/// @nodoc
class __$WindDataCopyWithImpl<$Res>
    implements _$WindDataCopyWith<$Res> {
  __$WindDataCopyWithImpl(this._self, this._then);

  final _WindData _self;
  final $Res Function(_WindData) _then;

/// Create a copy of WindData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? speed = null,Object? deg = null,}) {
  return _then(_WindData(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,deg: null == deg ? _self.deg : deg // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CloudsData {

 int get all;
/// Create a copy of CloudsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CloudsDataCopyWith<CloudsData> get copyWith => _$CloudsDataCopyWithImpl<CloudsData>(this as CloudsData, _$identity);

  /// Serializes this CloudsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CloudsData&&(identical(other.all, all) || other.all == all));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,all);

@override
String toString() {
  return 'CloudsData(all: $all)';
}


}

/// @nodoc
abstract mixin class $CloudsDataCopyWith<$Res>  {
  factory $CloudsDataCopyWith(CloudsData value, $Res Function(CloudsData) _then) = _$CloudsDataCopyWithImpl;
@useResult
$Res call({
 int all
});




}
/// @nodoc
class _$CloudsDataCopyWithImpl<$Res>
    implements $CloudsDataCopyWith<$Res> {
  _$CloudsDataCopyWithImpl(this._self, this._then);

  final CloudsData _self;
  final $Res Function(CloudsData) _then;

/// Create a copy of CloudsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? all = null,}) {
  return _then(_self.copyWith(
all: null == all ? _self.all : all // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CloudsData].
extension CloudsDataPatterns on CloudsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CloudsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CloudsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CloudsData value)  $default,){
final _that = this;
switch (_that) {
case _CloudsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CloudsData value)?  $default,){
final _that = this;
switch (_that) {
case _CloudsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int all)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CloudsData() when $default != null:
return $default(_that.all);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int all)  $default,) {final _that = this;
switch (_that) {
case _CloudsData():
return $default(_that.all);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int all)?  $default,) {final _that = this;
switch (_that) {
case _CloudsData() when $default != null:
return $default(_that.all);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CloudsData implements CloudsData {
  const _CloudsData({required this.all});
  factory _CloudsData.fromJson(Map<String, dynamic> json) => _$CloudsDataFromJson(json);

@override final  int all;

/// Create a copy of CloudsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CloudsDataCopyWith<_CloudsData> get copyWith => __$CloudsDataCopyWithImpl<_CloudsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CloudsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CloudsData&&(identical(other.all, all) || other.all == all));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,all);

@override
String toString() {
  return 'CloudsData(all: $all)';
}


}

/// @nodoc
abstract mixin class _$CloudsDataCopyWith<$Res> implements $CloudsDataCopyWith<$Res> {
  factory _$CloudsDataCopyWith(_CloudsData value, $Res Function(_CloudsData) _then) = __$CloudsDataCopyWithImpl;
@override @useResult
$Res call({
 int all
});




}
/// @nodoc
class __$CloudsDataCopyWithImpl<$Res>
    implements _$CloudsDataCopyWith<$Res> {
  __$CloudsDataCopyWithImpl(this._self, this._then);

  final _CloudsData _self;
  final $Res Function(_CloudsData) _then;

/// Create a copy of CloudsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? all = null,}) {
  return _then(_CloudsData(
all: null == all ? _self.all : all // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SysData {

 String get country; int get sunrise; int get sunset;
/// Create a copy of SysData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SysDataCopyWith<SysData> get copyWith => _$SysDataCopyWithImpl<SysData>(this as SysData, _$identity);

  /// Serializes this SysData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SysData&&(identical(other.country, country) || other.country == country)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,sunrise,sunset);

@override
String toString() {
  return 'SysData(country: $country, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class $SysDataCopyWith<$Res>  {
  factory $SysDataCopyWith(SysData value, $Res Function(SysData) _then) = _$SysDataCopyWithImpl;
@useResult
$Res call({
 String country, int sunrise, int sunset
});




}
/// @nodoc
class _$SysDataCopyWithImpl<$Res>
    implements $SysDataCopyWith<$Res> {
  _$SysDataCopyWithImpl(this._self, this._then);

  final SysData _self;
  final $Res Function(SysData) _then;

/// Create a copy of SysData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = null,Object? sunrise = null,Object? sunset = null,}) {
  return _then(_self.copyWith(
country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as int,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SysData].
extension SysDataPatterns on SysData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SysData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SysData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SysData value)  $default,){
final _that = this;
switch (_that) {
case _SysData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SysData value)?  $default,){
final _that = this;
switch (_that) {
case _SysData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String country,  int sunrise,  int sunset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SysData() when $default != null:
return $default(_that.country,_that.sunrise,_that.sunset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String country,  int sunrise,  int sunset)  $default,) {final _that = this;
switch (_that) {
case _SysData():
return $default(_that.country,_that.sunrise,_that.sunset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String country,  int sunrise,  int sunset)?  $default,) {final _that = this;
switch (_that) {
case _SysData() when $default != null:
return $default(_that.country,_that.sunrise,_that.sunset);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SysData implements SysData {
  const _SysData({required this.country, required this.sunrise, required this.sunset});
  factory _SysData.fromJson(Map<String, dynamic> json) => _$SysDataFromJson(json);

@override final  String country;
@override final  int sunrise;
@override final  int sunset;

/// Create a copy of SysData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SysDataCopyWith<_SysData> get copyWith => __$SysDataCopyWithImpl<_SysData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SysDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SysData&&(identical(other.country, country) || other.country == country)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,sunrise,sunset);

@override
String toString() {
  return 'SysData(country: $country, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class _$SysDataCopyWith<$Res> implements $SysDataCopyWith<$Res> {
  factory _$SysDataCopyWith(_SysData value, $Res Function(_SysData) _then) = __$SysDataCopyWithImpl;
@override @useResult
$Res call({
 String country, int sunrise, int sunset
});




}
/// @nodoc
class __$SysDataCopyWithImpl<$Res>
    implements _$SysDataCopyWith<$Res> {
  __$SysDataCopyWithImpl(this._self, this._then);

  final _SysData _self;
  final $Res Function(_SysData) _then;

/// Create a copy of SysData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = null,Object? sunrise = null,Object? sunset = null,}) {
  return _then(_SysData(
country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as int,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
