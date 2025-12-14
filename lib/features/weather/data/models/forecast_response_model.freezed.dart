// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForecastResponseModel {

 List<ForecastListItem> get list; CityData get city;
/// Create a copy of ForecastResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastResponseModelCopyWith<ForecastResponseModel> get copyWith => _$ForecastResponseModelCopyWithImpl<ForecastResponseModel>(this as ForecastResponseModel, _$identity);

  /// Serializes this ForecastResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastResponseModel&&const DeepCollectionEquality().equals(other.list, list)&&(identical(other.city, city) || other.city == city));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list),city);

@override
String toString() {
  return 'ForecastResponseModel(list: $list, city: $city)';
}


}

/// @nodoc
abstract mixin class $ForecastResponseModelCopyWith<$Res>  {
  factory $ForecastResponseModelCopyWith(ForecastResponseModel value, $Res Function(ForecastResponseModel) _then) = _$ForecastResponseModelCopyWithImpl;
@useResult
$Res call({
 List<ForecastListItem> list, CityData city
});


$CityDataCopyWith<$Res> get city;

}
/// @nodoc
class _$ForecastResponseModelCopyWithImpl<$Res>
    implements $ForecastResponseModelCopyWith<$Res> {
  _$ForecastResponseModelCopyWithImpl(this._self, this._then);

  final ForecastResponseModel _self;
  final $Res Function(ForecastResponseModel) _then;

/// Create a copy of ForecastResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? list = null,Object? city = null,}) {
  return _then(_self.copyWith(
list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<ForecastListItem>,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityData,
  ));
}
/// Create a copy of ForecastResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityDataCopyWith<$Res> get city {
  
  return $CityDataCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
}
}


/// Adds pattern-matching-related methods to [ForecastResponseModel].
extension ForecastResponseModelPatterns on ForecastResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForecastResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForecastResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForecastResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ForecastResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForecastResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ForecastResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ForecastListItem> list,  CityData city)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForecastResponseModel() when $default != null:
return $default(_that.list,_that.city);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ForecastListItem> list,  CityData city)  $default,) {final _that = this;
switch (_that) {
case _ForecastResponseModel():
return $default(_that.list,_that.city);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ForecastListItem> list,  CityData city)?  $default,) {final _that = this;
switch (_that) {
case _ForecastResponseModel() when $default != null:
return $default(_that.list,_that.city);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForecastResponseModel extends ForecastResponseModel {
  const _ForecastResponseModel({required final  List<ForecastListItem> list, required this.city}): _list = list,super._();
  factory _ForecastResponseModel.fromJson(Map<String, dynamic> json) => _$ForecastResponseModelFromJson(json);

 final  List<ForecastListItem> _list;
@override List<ForecastListItem> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

@override final  CityData city;

/// Create a copy of ForecastResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastResponseModelCopyWith<_ForecastResponseModel> get copyWith => __$ForecastResponseModelCopyWithImpl<_ForecastResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastResponseModel&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.city, city) || other.city == city));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),city);

@override
String toString() {
  return 'ForecastResponseModel(list: $list, city: $city)';
}


}

/// @nodoc
abstract mixin class _$ForecastResponseModelCopyWith<$Res> implements $ForecastResponseModelCopyWith<$Res> {
  factory _$ForecastResponseModelCopyWith(_ForecastResponseModel value, $Res Function(_ForecastResponseModel) _then) = __$ForecastResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<ForecastListItem> list, CityData city
});


@override $CityDataCopyWith<$Res> get city;

}
/// @nodoc
class __$ForecastResponseModelCopyWithImpl<$Res>
    implements _$ForecastResponseModelCopyWith<$Res> {
  __$ForecastResponseModelCopyWithImpl(this._self, this._then);

  final _ForecastResponseModel _self;
  final $Res Function(_ForecastResponseModel) _then;

/// Create a copy of ForecastResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? list = null,Object? city = null,}) {
  return _then(_ForecastResponseModel(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<ForecastListItem>,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityData,
  ));
}

/// Create a copy of ForecastResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityDataCopyWith<$Res> get city {
  
  return $CityDataCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
}
}


/// @nodoc
mixin _$ForecastListItem {

 int get dt; ForecastMainData get main; List<ForecastWeatherData> get weather; ForecastWindData get wind;
/// Create a copy of ForecastListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastListItemCopyWith<ForecastListItem> get copyWith => _$ForecastListItemCopyWithImpl<ForecastListItem>(this as ForecastListItem, _$identity);

  /// Serializes this ForecastListItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastListItem&&(identical(other.dt, dt) || other.dt == dt)&&(identical(other.main, main) || other.main == main)&&const DeepCollectionEquality().equals(other.weather, weather)&&(identical(other.wind, wind) || other.wind == wind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dt,main,const DeepCollectionEquality().hash(weather),wind);

@override
String toString() {
  return 'ForecastListItem(dt: $dt, main: $main, weather: $weather, wind: $wind)';
}


}

/// @nodoc
abstract mixin class $ForecastListItemCopyWith<$Res>  {
  factory $ForecastListItemCopyWith(ForecastListItem value, $Res Function(ForecastListItem) _then) = _$ForecastListItemCopyWithImpl;
@useResult
$Res call({
 int dt, ForecastMainData main, List<ForecastWeatherData> weather, ForecastWindData wind
});


$ForecastMainDataCopyWith<$Res> get main;$ForecastWindDataCopyWith<$Res> get wind;

}
/// @nodoc
class _$ForecastListItemCopyWithImpl<$Res>
    implements $ForecastListItemCopyWith<$Res> {
  _$ForecastListItemCopyWithImpl(this._self, this._then);

  final ForecastListItem _self;
  final $Res Function(ForecastListItem) _then;

/// Create a copy of ForecastListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dt = null,Object? main = null,Object? weather = null,Object? wind = null,}) {
  return _then(_self.copyWith(
dt: null == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as ForecastMainData,weather: null == weather ? _self.weather : weather // ignore: cast_nullable_to_non_nullable
as List<ForecastWeatherData>,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as ForecastWindData,
  ));
}
/// Create a copy of ForecastListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForecastMainDataCopyWith<$Res> get main {
  
  return $ForecastMainDataCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of ForecastListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForecastWindDataCopyWith<$Res> get wind {
  
  return $ForecastWindDataCopyWith<$Res>(_self.wind, (value) {
    return _then(_self.copyWith(wind: value));
  });
}
}


/// Adds pattern-matching-related methods to [ForecastListItem].
extension ForecastListItemPatterns on ForecastListItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForecastListItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForecastListItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForecastListItem value)  $default,){
final _that = this;
switch (_that) {
case _ForecastListItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForecastListItem value)?  $default,){
final _that = this;
switch (_that) {
case _ForecastListItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int dt,  ForecastMainData main,  List<ForecastWeatherData> weather,  ForecastWindData wind)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForecastListItem() when $default != null:
return $default(_that.dt,_that.main,_that.weather,_that.wind);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int dt,  ForecastMainData main,  List<ForecastWeatherData> weather,  ForecastWindData wind)  $default,) {final _that = this;
switch (_that) {
case _ForecastListItem():
return $default(_that.dt,_that.main,_that.weather,_that.wind);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int dt,  ForecastMainData main,  List<ForecastWeatherData> weather,  ForecastWindData wind)?  $default,) {final _that = this;
switch (_that) {
case _ForecastListItem() when $default != null:
return $default(_that.dt,_that.main,_that.weather,_that.wind);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForecastListItem implements ForecastListItem {
  const _ForecastListItem({required this.dt, required this.main, required final  List<ForecastWeatherData> weather, required this.wind}): _weather = weather;
  factory _ForecastListItem.fromJson(Map<String, dynamic> json) => _$ForecastListItemFromJson(json);

@override final  int dt;
@override final  ForecastMainData main;
 final  List<ForecastWeatherData> _weather;
@override List<ForecastWeatherData> get weather {
  if (_weather is EqualUnmodifiableListView) return _weather;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weather);
}

@override final  ForecastWindData wind;

/// Create a copy of ForecastListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastListItemCopyWith<_ForecastListItem> get copyWith => __$ForecastListItemCopyWithImpl<_ForecastListItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastListItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastListItem&&(identical(other.dt, dt) || other.dt == dt)&&(identical(other.main, main) || other.main == main)&&const DeepCollectionEquality().equals(other._weather, _weather)&&(identical(other.wind, wind) || other.wind == wind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dt,main,const DeepCollectionEquality().hash(_weather),wind);

@override
String toString() {
  return 'ForecastListItem(dt: $dt, main: $main, weather: $weather, wind: $wind)';
}


}

/// @nodoc
abstract mixin class _$ForecastListItemCopyWith<$Res> implements $ForecastListItemCopyWith<$Res> {
  factory _$ForecastListItemCopyWith(_ForecastListItem value, $Res Function(_ForecastListItem) _then) = __$ForecastListItemCopyWithImpl;
@override @useResult
$Res call({
 int dt, ForecastMainData main, List<ForecastWeatherData> weather, ForecastWindData wind
});


@override $ForecastMainDataCopyWith<$Res> get main;@override $ForecastWindDataCopyWith<$Res> get wind;

}
/// @nodoc
class __$ForecastListItemCopyWithImpl<$Res>
    implements _$ForecastListItemCopyWith<$Res> {
  __$ForecastListItemCopyWithImpl(this._self, this._then);

  final _ForecastListItem _self;
  final $Res Function(_ForecastListItem) _then;

/// Create a copy of ForecastListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dt = null,Object? main = null,Object? weather = null,Object? wind = null,}) {
  return _then(_ForecastListItem(
dt: null == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as ForecastMainData,weather: null == weather ? _self._weather : weather // ignore: cast_nullable_to_non_nullable
as List<ForecastWeatherData>,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as ForecastWindData,
  ));
}

/// Create a copy of ForecastListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForecastMainDataCopyWith<$Res> get main {
  
  return $ForecastMainDataCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of ForecastListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForecastWindDataCopyWith<$Res> get wind {
  
  return $ForecastWindDataCopyWith<$Res>(_self.wind, (value) {
    return _then(_self.copyWith(wind: value));
  });
}
}


/// @nodoc
mixin _$ForecastMainData {

 double get temp; double get tempMin; double get tempMax; int get humidity;
/// Create a copy of ForecastMainData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastMainDataCopyWith<ForecastMainData> get copyWith => _$ForecastMainDataCopyWithImpl<ForecastMainData>(this as ForecastMainData, _$identity);

  /// Serializes this ForecastMainData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastMainData&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,tempMin,tempMax,humidity);

@override
String toString() {
  return 'ForecastMainData(temp: $temp, tempMin: $tempMin, tempMax: $tempMax, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class $ForecastMainDataCopyWith<$Res>  {
  factory $ForecastMainDataCopyWith(ForecastMainData value, $Res Function(ForecastMainData) _then) = _$ForecastMainDataCopyWithImpl;
@useResult
$Res call({
 double temp, double tempMin, double tempMax, int humidity
});




}
/// @nodoc
class _$ForecastMainDataCopyWithImpl<$Res>
    implements $ForecastMainDataCopyWith<$Res> {
  _$ForecastMainDataCopyWithImpl(this._self, this._then);

  final ForecastMainData _self;
  final $Res Function(ForecastMainData) _then;

/// Create a copy of ForecastMainData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temp = null,Object? tempMin = null,Object? tempMax = null,Object? humidity = null,}) {
  return _then(_self.copyWith(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ForecastMainData].
extension ForecastMainDataPatterns on ForecastMainData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForecastMainData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForecastMainData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForecastMainData value)  $default,){
final _that = this;
switch (_that) {
case _ForecastMainData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForecastMainData value)?  $default,){
final _that = this;
switch (_that) {
case _ForecastMainData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double temp,  double tempMin,  double tempMax,  int humidity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForecastMainData() when $default != null:
return $default(_that.temp,_that.tempMin,_that.tempMax,_that.humidity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double temp,  double tempMin,  double tempMax,  int humidity)  $default,) {final _that = this;
switch (_that) {
case _ForecastMainData():
return $default(_that.temp,_that.tempMin,_that.tempMax,_that.humidity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double temp,  double tempMin,  double tempMax,  int humidity)?  $default,) {final _that = this;
switch (_that) {
case _ForecastMainData() when $default != null:
return $default(_that.temp,_that.tempMin,_that.tempMax,_that.humidity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForecastMainData implements ForecastMainData {
  const _ForecastMainData({required this.temp, required this.tempMin, required this.tempMax, required this.humidity});
  factory _ForecastMainData.fromJson(Map<String, dynamic> json) => _$ForecastMainDataFromJson(json);

@override final  double temp;
@override final  double tempMin;
@override final  double tempMax;
@override final  int humidity;

/// Create a copy of ForecastMainData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastMainDataCopyWith<_ForecastMainData> get copyWith => __$ForecastMainDataCopyWithImpl<_ForecastMainData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastMainDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastMainData&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,tempMin,tempMax,humidity);

@override
String toString() {
  return 'ForecastMainData(temp: $temp, tempMin: $tempMin, tempMax: $tempMax, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class _$ForecastMainDataCopyWith<$Res> implements $ForecastMainDataCopyWith<$Res> {
  factory _$ForecastMainDataCopyWith(_ForecastMainData value, $Res Function(_ForecastMainData) _then) = __$ForecastMainDataCopyWithImpl;
@override @useResult
$Res call({
 double temp, double tempMin, double tempMax, int humidity
});




}
/// @nodoc
class __$ForecastMainDataCopyWithImpl<$Res>
    implements _$ForecastMainDataCopyWith<$Res> {
  __$ForecastMainDataCopyWithImpl(this._self, this._then);

  final _ForecastMainData _self;
  final $Res Function(_ForecastMainData) _then;

/// Create a copy of ForecastMainData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temp = null,Object? tempMin = null,Object? tempMax = null,Object? humidity = null,}) {
  return _then(_ForecastMainData(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ForecastWeatherData {

 int get id; String get main; String get description;
/// Create a copy of ForecastWeatherData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastWeatherDataCopyWith<ForecastWeatherData> get copyWith => _$ForecastWeatherDataCopyWithImpl<ForecastWeatherData>(this as ForecastWeatherData, _$identity);

  /// Serializes this ForecastWeatherData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastWeatherData&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description);

@override
String toString() {
  return 'ForecastWeatherData(id: $id, main: $main, description: $description)';
}


}

/// @nodoc
abstract mixin class $ForecastWeatherDataCopyWith<$Res>  {
  factory $ForecastWeatherDataCopyWith(ForecastWeatherData value, $Res Function(ForecastWeatherData) _then) = _$ForecastWeatherDataCopyWithImpl;
@useResult
$Res call({
 int id, String main, String description
});




}
/// @nodoc
class _$ForecastWeatherDataCopyWithImpl<$Res>
    implements $ForecastWeatherDataCopyWith<$Res> {
  _$ForecastWeatherDataCopyWithImpl(this._self, this._then);

  final ForecastWeatherData _self;
  final $Res Function(ForecastWeatherData) _then;

/// Create a copy of ForecastWeatherData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? main = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ForecastWeatherData].
extension ForecastWeatherDataPatterns on ForecastWeatherData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForecastWeatherData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForecastWeatherData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForecastWeatherData value)  $default,){
final _that = this;
switch (_that) {
case _ForecastWeatherData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForecastWeatherData value)?  $default,){
final _that = this;
switch (_that) {
case _ForecastWeatherData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String main,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForecastWeatherData() when $default != null:
return $default(_that.id,_that.main,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String main,  String description)  $default,) {final _that = this;
switch (_that) {
case _ForecastWeatherData():
return $default(_that.id,_that.main,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String main,  String description)?  $default,) {final _that = this;
switch (_that) {
case _ForecastWeatherData() when $default != null:
return $default(_that.id,_that.main,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForecastWeatherData implements ForecastWeatherData {
  const _ForecastWeatherData({required this.id, required this.main, required this.description});
  factory _ForecastWeatherData.fromJson(Map<String, dynamic> json) => _$ForecastWeatherDataFromJson(json);

@override final  int id;
@override final  String main;
@override final  String description;

/// Create a copy of ForecastWeatherData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastWeatherDataCopyWith<_ForecastWeatherData> get copyWith => __$ForecastWeatherDataCopyWithImpl<_ForecastWeatherData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastWeatherDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastWeatherData&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description);

@override
String toString() {
  return 'ForecastWeatherData(id: $id, main: $main, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ForecastWeatherDataCopyWith<$Res> implements $ForecastWeatherDataCopyWith<$Res> {
  factory _$ForecastWeatherDataCopyWith(_ForecastWeatherData value, $Res Function(_ForecastWeatherData) _then) = __$ForecastWeatherDataCopyWithImpl;
@override @useResult
$Res call({
 int id, String main, String description
});




}
/// @nodoc
class __$ForecastWeatherDataCopyWithImpl<$Res>
    implements _$ForecastWeatherDataCopyWith<$Res> {
  __$ForecastWeatherDataCopyWithImpl(this._self, this._then);

  final _ForecastWeatherData _self;
  final $Res Function(_ForecastWeatherData) _then;

/// Create a copy of ForecastWeatherData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? main = null,Object? description = null,}) {
  return _then(_ForecastWeatherData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ForecastWindData {

 double get speed;
/// Create a copy of ForecastWindData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastWindDataCopyWith<ForecastWindData> get copyWith => _$ForecastWindDataCopyWithImpl<ForecastWindData>(this as ForecastWindData, _$identity);

  /// Serializes this ForecastWindData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastWindData&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed);

@override
String toString() {
  return 'ForecastWindData(speed: $speed)';
}


}

/// @nodoc
abstract mixin class $ForecastWindDataCopyWith<$Res>  {
  factory $ForecastWindDataCopyWith(ForecastWindData value, $Res Function(ForecastWindData) _then) = _$ForecastWindDataCopyWithImpl;
@useResult
$Res call({
 double speed
});




}
/// @nodoc
class _$ForecastWindDataCopyWithImpl<$Res>
    implements $ForecastWindDataCopyWith<$Res> {
  _$ForecastWindDataCopyWithImpl(this._self, this._then);

  final ForecastWindData _self;
  final $Res Function(ForecastWindData) _then;

/// Create a copy of ForecastWindData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? speed = null,}) {
  return _then(_self.copyWith(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ForecastWindData].
extension ForecastWindDataPatterns on ForecastWindData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForecastWindData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForecastWindData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForecastWindData value)  $default,){
final _that = this;
switch (_that) {
case _ForecastWindData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForecastWindData value)?  $default,){
final _that = this;
switch (_that) {
case _ForecastWindData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double speed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForecastWindData() when $default != null:
return $default(_that.speed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double speed)  $default,) {final _that = this;
switch (_that) {
case _ForecastWindData():
return $default(_that.speed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double speed)?  $default,) {final _that = this;
switch (_that) {
case _ForecastWindData() when $default != null:
return $default(_that.speed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForecastWindData implements ForecastWindData {
  const _ForecastWindData({required this.speed});
  factory _ForecastWindData.fromJson(Map<String, dynamic> json) => _$ForecastWindDataFromJson(json);

@override final  double speed;

/// Create a copy of ForecastWindData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastWindDataCopyWith<_ForecastWindData> get copyWith => __$ForecastWindDataCopyWithImpl<_ForecastWindData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastWindDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastWindData&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed);

@override
String toString() {
  return 'ForecastWindData(speed: $speed)';
}


}

/// @nodoc
abstract mixin class _$ForecastWindDataCopyWith<$Res> implements $ForecastWindDataCopyWith<$Res> {
  factory _$ForecastWindDataCopyWith(_ForecastWindData value, $Res Function(_ForecastWindData) _then) = __$ForecastWindDataCopyWithImpl;
@override @useResult
$Res call({
 double speed
});




}
/// @nodoc
class __$ForecastWindDataCopyWithImpl<$Res>
    implements _$ForecastWindDataCopyWith<$Res> {
  __$ForecastWindDataCopyWithImpl(this._self, this._then);

  final _ForecastWindData _self;
  final $Res Function(_ForecastWindData) _then;

/// Create a copy of ForecastWindData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? speed = null,}) {
  return _then(_ForecastWindData(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CityData {

 String get name; String get country;
/// Create a copy of CityData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityDataCopyWith<CityData> get copyWith => _$CityDataCopyWithImpl<CityData>(this as CityData, _$identity);

  /// Serializes this CityData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityData&&(identical(other.name, name) || other.name == name)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,country);

@override
String toString() {
  return 'CityData(name: $name, country: $country)';
}


}

/// @nodoc
abstract mixin class $CityDataCopyWith<$Res>  {
  factory $CityDataCopyWith(CityData value, $Res Function(CityData) _then) = _$CityDataCopyWithImpl;
@useResult
$Res call({
 String name, String country
});




}
/// @nodoc
class _$CityDataCopyWithImpl<$Res>
    implements $CityDataCopyWith<$Res> {
  _$CityDataCopyWithImpl(this._self, this._then);

  final CityData _self;
  final $Res Function(CityData) _then;

/// Create a copy of CityData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? country = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CityData].
extension CityDataPatterns on CityData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityData value)  $default,){
final _that = this;
switch (_that) {
case _CityData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityData value)?  $default,){
final _that = this;
switch (_that) {
case _CityData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityData() when $default != null:
return $default(_that.name,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String country)  $default,) {final _that = this;
switch (_that) {
case _CityData():
return $default(_that.name,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String country)?  $default,) {final _that = this;
switch (_that) {
case _CityData() when $default != null:
return $default(_that.name,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityData implements CityData {
  const _CityData({required this.name, required this.country});
  factory _CityData.fromJson(Map<String, dynamic> json) => _$CityDataFromJson(json);

@override final  String name;
@override final  String country;

/// Create a copy of CityData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityDataCopyWith<_CityData> get copyWith => __$CityDataCopyWithImpl<_CityData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityData&&(identical(other.name, name) || other.name == name)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,country);

@override
String toString() {
  return 'CityData(name: $name, country: $country)';
}


}

/// @nodoc
abstract mixin class _$CityDataCopyWith<$Res> implements $CityDataCopyWith<$Res> {
  factory _$CityDataCopyWith(_CityData value, $Res Function(_CityData) _then) = __$CityDataCopyWithImpl;
@override @useResult
$Res call({
 String name, String country
});




}
/// @nodoc
class __$CityDataCopyWithImpl<$Res>
    implements _$CityDataCopyWith<$Res> {
  __$CityDataCopyWithImpl(this._self, this._then);

  final _CityData _self;
  final $Res Function(_CityData) _then;

/// Create a copy of CityData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? country = null,}) {
  return _then(_CityData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
