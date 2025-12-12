// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ForecastResponseModel _$ForecastResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _ForecastResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastResponseModel {
  List<ForecastListItem> get list => throw _privateConstructorUsedError;
  CityData get city => throw _privateConstructorUsedError;

  /// Serializes this ForecastResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastResponseModelCopyWith<ForecastResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastResponseModelCopyWith<$Res> {
  factory $ForecastResponseModelCopyWith(
    ForecastResponseModel value,
    $Res Function(ForecastResponseModel) then,
  ) = _$ForecastResponseModelCopyWithImpl<$Res, ForecastResponseModel>;
  @useResult
  $Res call({List<ForecastListItem> list, CityData city});

  $CityDataCopyWith<$Res> get city;
}

/// @nodoc
class _$ForecastResponseModelCopyWithImpl<
  $Res,
  $Val extends ForecastResponseModel
>
    implements $ForecastResponseModelCopyWith<$Res> {
  _$ForecastResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? list = null, Object? city = null}) {
    return _then(
      _value.copyWith(
            list: null == list
                ? _value.list
                : list // ignore: cast_nullable_to_non_nullable
                      as List<ForecastListItem>,
            city: null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as CityData,
          )
          as $Val,
    );
  }

  /// Create a copy of ForecastResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityDataCopyWith<$Res> get city {
    return $CityDataCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastResponseModelImplCopyWith<$Res>
    implements $ForecastResponseModelCopyWith<$Res> {
  factory _$$ForecastResponseModelImplCopyWith(
    _$ForecastResponseModelImpl value,
    $Res Function(_$ForecastResponseModelImpl) then,
  ) = __$$ForecastResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ForecastListItem> list, CityData city});

  @override
  $CityDataCopyWith<$Res> get city;
}

/// @nodoc
class __$$ForecastResponseModelImplCopyWithImpl<$Res>
    extends
        _$ForecastResponseModelCopyWithImpl<$Res, _$ForecastResponseModelImpl>
    implements _$$ForecastResponseModelImplCopyWith<$Res> {
  __$$ForecastResponseModelImplCopyWithImpl(
    _$ForecastResponseModelImpl _value,
    $Res Function(_$ForecastResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForecastResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? list = null, Object? city = null}) {
    return _then(
      _$ForecastResponseModelImpl(
        list: null == list
            ? _value._list
            : list // ignore: cast_nullable_to_non_nullable
                  as List<ForecastListItem>,
        city: null == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as CityData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastResponseModelImpl extends _ForecastResponseModel {
  const _$ForecastResponseModelImpl({
    required final List<ForecastListItem> list,
    required this.city,
  }) : _list = list,
       super._();

  factory _$ForecastResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastResponseModelImplFromJson(json);

  final List<ForecastListItem> _list;
  @override
  List<ForecastListItem> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final CityData city;

  @override
  String toString() {
    return 'ForecastResponseModel(list: $list, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastResponseModelImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_list),
    city,
  );

  /// Create a copy of ForecastResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastResponseModelImplCopyWith<_$ForecastResponseModelImpl>
  get copyWith =>
      __$$ForecastResponseModelImplCopyWithImpl<_$ForecastResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastResponseModelImplToJson(this);
  }
}

abstract class _ForecastResponseModel extends ForecastResponseModel {
  const factory _ForecastResponseModel({
    required final List<ForecastListItem> list,
    required final CityData city,
  }) = _$ForecastResponseModelImpl;
  const _ForecastResponseModel._() : super._();

  factory _ForecastResponseModel.fromJson(Map<String, dynamic> json) =
      _$ForecastResponseModelImpl.fromJson;

  @override
  List<ForecastListItem> get list;
  @override
  CityData get city;

  /// Create a copy of ForecastResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastResponseModelImplCopyWith<_$ForecastResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ForecastListItem _$ForecastListItemFromJson(Map<String, dynamic> json) {
  return _ForecastListItem.fromJson(json);
}

/// @nodoc
mixin _$ForecastListItem {
  int get dt => throw _privateConstructorUsedError;
  ForecastMainData get main => throw _privateConstructorUsedError;
  List<ForecastWeatherData> get weather => throw _privateConstructorUsedError;
  ForecastWindData get wind => throw _privateConstructorUsedError;

  /// Serializes this ForecastListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastListItemCopyWith<ForecastListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastListItemCopyWith<$Res> {
  factory $ForecastListItemCopyWith(
    ForecastListItem value,
    $Res Function(ForecastListItem) then,
  ) = _$ForecastListItemCopyWithImpl<$Res, ForecastListItem>;
  @useResult
  $Res call({
    int dt,
    ForecastMainData main,
    List<ForecastWeatherData> weather,
    ForecastWindData wind,
  });

  $ForecastMainDataCopyWith<$Res> get main;
  $ForecastWindDataCopyWith<$Res> get wind;
}

/// @nodoc
class _$ForecastListItemCopyWithImpl<$Res, $Val extends ForecastListItem>
    implements $ForecastListItemCopyWith<$Res> {
  _$ForecastListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? wind = null,
  }) {
    return _then(
      _value.copyWith(
            dt: null == dt
                ? _value.dt
                : dt // ignore: cast_nullable_to_non_nullable
                      as int,
            main: null == main
                ? _value.main
                : main // ignore: cast_nullable_to_non_nullable
                      as ForecastMainData,
            weather: null == weather
                ? _value.weather
                : weather // ignore: cast_nullable_to_non_nullable
                      as List<ForecastWeatherData>,
            wind: null == wind
                ? _value.wind
                : wind // ignore: cast_nullable_to_non_nullable
                      as ForecastWindData,
          )
          as $Val,
    );
  }

  /// Create a copy of ForecastListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastMainDataCopyWith<$Res> get main {
    return $ForecastMainDataCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  /// Create a copy of ForecastListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastWindDataCopyWith<$Res> get wind {
    return $ForecastWindDataCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastListItemImplCopyWith<$Res>
    implements $ForecastListItemCopyWith<$Res> {
  factory _$$ForecastListItemImplCopyWith(
    _$ForecastListItemImpl value,
    $Res Function(_$ForecastListItemImpl) then,
  ) = __$$ForecastListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int dt,
    ForecastMainData main,
    List<ForecastWeatherData> weather,
    ForecastWindData wind,
  });

  @override
  $ForecastMainDataCopyWith<$Res> get main;
  @override
  $ForecastWindDataCopyWith<$Res> get wind;
}

/// @nodoc
class __$$ForecastListItemImplCopyWithImpl<$Res>
    extends _$ForecastListItemCopyWithImpl<$Res, _$ForecastListItemImpl>
    implements _$$ForecastListItemImplCopyWith<$Res> {
  __$$ForecastListItemImplCopyWithImpl(
    _$ForecastListItemImpl _value,
    $Res Function(_$ForecastListItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForecastListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? wind = null,
  }) {
    return _then(
      _$ForecastListItemImpl(
        dt: null == dt
            ? _value.dt
            : dt // ignore: cast_nullable_to_non_nullable
                  as int,
        main: null == main
            ? _value.main
            : main // ignore: cast_nullable_to_non_nullable
                  as ForecastMainData,
        weather: null == weather
            ? _value._weather
            : weather // ignore: cast_nullable_to_non_nullable
                  as List<ForecastWeatherData>,
        wind: null == wind
            ? _value.wind
            : wind // ignore: cast_nullable_to_non_nullable
                  as ForecastWindData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastListItemImpl implements _ForecastListItem {
  const _$ForecastListItemImpl({
    required this.dt,
    required this.main,
    required final List<ForecastWeatherData> weather,
    required this.wind,
  }) : _weather = weather;

  factory _$ForecastListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastListItemImplFromJson(json);

  @override
  final int dt;
  @override
  final ForecastMainData main;
  final List<ForecastWeatherData> _weather;
  @override
  List<ForecastWeatherData> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final ForecastWindData wind;

  @override
  String toString() {
    return 'ForecastListItem(dt: $dt, main: $main, weather: $weather, wind: $wind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastListItemImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.wind, wind) || other.wind == wind));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    dt,
    main,
    const DeepCollectionEquality().hash(_weather),
    wind,
  );

  /// Create a copy of ForecastListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastListItemImplCopyWith<_$ForecastListItemImpl> get copyWith =>
      __$$ForecastListItemImplCopyWithImpl<_$ForecastListItemImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastListItemImplToJson(this);
  }
}

abstract class _ForecastListItem implements ForecastListItem {
  const factory _ForecastListItem({
    required final int dt,
    required final ForecastMainData main,
    required final List<ForecastWeatherData> weather,
    required final ForecastWindData wind,
  }) = _$ForecastListItemImpl;

  factory _ForecastListItem.fromJson(Map<String, dynamic> json) =
      _$ForecastListItemImpl.fromJson;

  @override
  int get dt;
  @override
  ForecastMainData get main;
  @override
  List<ForecastWeatherData> get weather;
  @override
  ForecastWindData get wind;

  /// Create a copy of ForecastListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastListItemImplCopyWith<_$ForecastListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastMainData _$ForecastMainDataFromJson(Map<String, dynamic> json) {
  return _ForecastMainData.fromJson(json);
}

/// @nodoc
mixin _$ForecastMainData {
  double get temp => throw _privateConstructorUsedError;
  double get tempMin => throw _privateConstructorUsedError;
  double get tempMax => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  /// Serializes this ForecastMainData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastMainData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastMainDataCopyWith<ForecastMainData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastMainDataCopyWith<$Res> {
  factory $ForecastMainDataCopyWith(
    ForecastMainData value,
    $Res Function(ForecastMainData) then,
  ) = _$ForecastMainDataCopyWithImpl<$Res, ForecastMainData>;
  @useResult
  $Res call({double temp, double tempMin, double tempMax, int humidity});
}

/// @nodoc
class _$ForecastMainDataCopyWithImpl<$Res, $Val extends ForecastMainData>
    implements $ForecastMainDataCopyWith<$Res> {
  _$ForecastMainDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastMainData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? humidity = null,
  }) {
    return _then(
      _value.copyWith(
            temp: null == temp
                ? _value.temp
                : temp // ignore: cast_nullable_to_non_nullable
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ForecastMainDataImplCopyWith<$Res>
    implements $ForecastMainDataCopyWith<$Res> {
  factory _$$ForecastMainDataImplCopyWith(
    _$ForecastMainDataImpl value,
    $Res Function(_$ForecastMainDataImpl) then,
  ) = __$$ForecastMainDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double temp, double tempMin, double tempMax, int humidity});
}

/// @nodoc
class __$$ForecastMainDataImplCopyWithImpl<$Res>
    extends _$ForecastMainDataCopyWithImpl<$Res, _$ForecastMainDataImpl>
    implements _$$ForecastMainDataImplCopyWith<$Res> {
  __$$ForecastMainDataImplCopyWithImpl(
    _$ForecastMainDataImpl _value,
    $Res Function(_$ForecastMainDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForecastMainData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? humidity = null,
  }) {
    return _then(
      _$ForecastMainDataImpl(
        temp: null == temp
            ? _value.temp
            : temp // ignore: cast_nullable_to_non_nullable
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastMainDataImpl implements _ForecastMainData {
  const _$ForecastMainDataImpl({
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.humidity,
  });

  factory _$ForecastMainDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastMainDataImplFromJson(json);

  @override
  final double temp;
  @override
  final double tempMin;
  @override
  final double tempMax;
  @override
  final int humidity;

  @override
  String toString() {
    return 'ForecastMainData(temp: $temp, tempMin: $tempMin, tempMax: $tempMax, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastMainDataImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, temp, tempMin, tempMax, humidity);

  /// Create a copy of ForecastMainData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastMainDataImplCopyWith<_$ForecastMainDataImpl> get copyWith =>
      __$$ForecastMainDataImplCopyWithImpl<_$ForecastMainDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastMainDataImplToJson(this);
  }
}

abstract class _ForecastMainData implements ForecastMainData {
  const factory _ForecastMainData({
    required final double temp,
    required final double tempMin,
    required final double tempMax,
    required final int humidity,
  }) = _$ForecastMainDataImpl;

  factory _ForecastMainData.fromJson(Map<String, dynamic> json) =
      _$ForecastMainDataImpl.fromJson;

  @override
  double get temp;
  @override
  double get tempMin;
  @override
  double get tempMax;
  @override
  int get humidity;

  /// Create a copy of ForecastMainData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastMainDataImplCopyWith<_$ForecastMainDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastWeatherData _$ForecastWeatherDataFromJson(Map<String, dynamic> json) {
  return _ForecastWeatherData.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeatherData {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this ForecastWeatherData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastWeatherDataCopyWith<ForecastWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherDataCopyWith<$Res> {
  factory $ForecastWeatherDataCopyWith(
    ForecastWeatherData value,
    $Res Function(ForecastWeatherData) then,
  ) = _$ForecastWeatherDataCopyWithImpl<$Res, ForecastWeatherData>;
  @useResult
  $Res call({int id, String main, String description});
}

/// @nodoc
class _$ForecastWeatherDataCopyWithImpl<$Res, $Val extends ForecastWeatherData>
    implements $ForecastWeatherDataCopyWith<$Res> {
  _$ForecastWeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            main: null == main
                ? _value.main
                : main // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ForecastWeatherDataImplCopyWith<$Res>
    implements $ForecastWeatherDataCopyWith<$Res> {
  factory _$$ForecastWeatherDataImplCopyWith(
    _$ForecastWeatherDataImpl value,
    $Res Function(_$ForecastWeatherDataImpl) then,
  ) = __$$ForecastWeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String main, String description});
}

/// @nodoc
class __$$ForecastWeatherDataImplCopyWithImpl<$Res>
    extends _$ForecastWeatherDataCopyWithImpl<$Res, _$ForecastWeatherDataImpl>
    implements _$$ForecastWeatherDataImplCopyWith<$Res> {
  __$$ForecastWeatherDataImplCopyWithImpl(
    _$ForecastWeatherDataImpl _value,
    $Res Function(_$ForecastWeatherDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForecastWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
  }) {
    return _then(
      _$ForecastWeatherDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        main: null == main
            ? _value.main
            : main // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastWeatherDataImpl implements _ForecastWeatherData {
  const _$ForecastWeatherDataImpl({
    required this.id,
    required this.main,
    required this.description,
  });

  factory _$ForecastWeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastWeatherDataImplFromJson(json);

  @override
  final int id;
  @override
  final String main;
  @override
  final String description;

  @override
  String toString() {
    return 'ForecastWeatherData(id: $id, main: $main, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastWeatherDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description);

  /// Create a copy of ForecastWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastWeatherDataImplCopyWith<_$ForecastWeatherDataImpl> get copyWith =>
      __$$ForecastWeatherDataImplCopyWithImpl<_$ForecastWeatherDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastWeatherDataImplToJson(this);
  }
}

abstract class _ForecastWeatherData implements ForecastWeatherData {
  const factory _ForecastWeatherData({
    required final int id,
    required final String main,
    required final String description,
  }) = _$ForecastWeatherDataImpl;

  factory _ForecastWeatherData.fromJson(Map<String, dynamic> json) =
      _$ForecastWeatherDataImpl.fromJson;

  @override
  int get id;
  @override
  String get main;
  @override
  String get description;

  /// Create a copy of ForecastWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastWeatherDataImplCopyWith<_$ForecastWeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastWindData _$ForecastWindDataFromJson(Map<String, dynamic> json) {
  return _ForecastWindData.fromJson(json);
}

/// @nodoc
mixin _$ForecastWindData {
  double get speed => throw _privateConstructorUsedError;

  /// Serializes this ForecastWindData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastWindData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastWindDataCopyWith<ForecastWindData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWindDataCopyWith<$Res> {
  factory $ForecastWindDataCopyWith(
    ForecastWindData value,
    $Res Function(ForecastWindData) then,
  ) = _$ForecastWindDataCopyWithImpl<$Res, ForecastWindData>;
  @useResult
  $Res call({double speed});
}

/// @nodoc
class _$ForecastWindDataCopyWithImpl<$Res, $Val extends ForecastWindData>
    implements $ForecastWindDataCopyWith<$Res> {
  _$ForecastWindDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastWindData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? speed = null}) {
    return _then(
      _value.copyWith(
            speed: null == speed
                ? _value.speed
                : speed // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ForecastWindDataImplCopyWith<$Res>
    implements $ForecastWindDataCopyWith<$Res> {
  factory _$$ForecastWindDataImplCopyWith(
    _$ForecastWindDataImpl value,
    $Res Function(_$ForecastWindDataImpl) then,
  ) = __$$ForecastWindDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed});
}

/// @nodoc
class __$$ForecastWindDataImplCopyWithImpl<$Res>
    extends _$ForecastWindDataCopyWithImpl<$Res, _$ForecastWindDataImpl>
    implements _$$ForecastWindDataImplCopyWith<$Res> {
  __$$ForecastWindDataImplCopyWithImpl(
    _$ForecastWindDataImpl _value,
    $Res Function(_$ForecastWindDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForecastWindData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? speed = null}) {
    return _then(
      _$ForecastWindDataImpl(
        speed: null == speed
            ? _value.speed
            : speed // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastWindDataImpl implements _ForecastWindData {
  const _$ForecastWindDataImpl({required this.speed});

  factory _$ForecastWindDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastWindDataImplFromJson(json);

  @override
  final double speed;

  @override
  String toString() {
    return 'ForecastWindData(speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastWindDataImpl &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speed);

  /// Create a copy of ForecastWindData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastWindDataImplCopyWith<_$ForecastWindDataImpl> get copyWith =>
      __$$ForecastWindDataImplCopyWithImpl<_$ForecastWindDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastWindDataImplToJson(this);
  }
}

abstract class _ForecastWindData implements ForecastWindData {
  const factory _ForecastWindData({required final double speed}) =
      _$ForecastWindDataImpl;

  factory _ForecastWindData.fromJson(Map<String, dynamic> json) =
      _$ForecastWindDataImpl.fromJson;

  @override
  double get speed;

  /// Create a copy of ForecastWindData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastWindDataImplCopyWith<_$ForecastWindDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CityData _$CityDataFromJson(Map<String, dynamic> json) {
  return _CityData.fromJson(json);
}

/// @nodoc
mixin _$CityData {
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  /// Serializes this CityData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CityData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityDataCopyWith<CityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDataCopyWith<$Res> {
  factory $CityDataCopyWith(CityData value, $Res Function(CityData) then) =
      _$CityDataCopyWithImpl<$Res, CityData>;
  @useResult
  $Res call({String name, String country});
}

/// @nodoc
class _$CityDataCopyWithImpl<$Res, $Val extends CityData>
    implements $CityDataCopyWith<$Res> {
  _$CityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? country = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            country: null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CityDataImplCopyWith<$Res>
    implements $CityDataCopyWith<$Res> {
  factory _$$CityDataImplCopyWith(
    _$CityDataImpl value,
    $Res Function(_$CityDataImpl) then,
  ) = __$$CityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String country});
}

/// @nodoc
class __$$CityDataImplCopyWithImpl<$Res>
    extends _$CityDataCopyWithImpl<$Res, _$CityDataImpl>
    implements _$$CityDataImplCopyWith<$Res> {
  __$$CityDataImplCopyWithImpl(
    _$CityDataImpl _value,
    $Res Function(_$CityDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CityData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? country = null}) {
    return _then(
      _$CityDataImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        country: null == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CityDataImpl implements _CityData {
  const _$CityDataImpl({required this.name, required this.country});

  factory _$CityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityDataImplFromJson(json);

  @override
  final String name;
  @override
  final String country;

  @override
  String toString() {
    return 'CityData(name: $name, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, country);

  /// Create a copy of CityData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityDataImplCopyWith<_$CityDataImpl> get copyWith =>
      __$$CityDataImplCopyWithImpl<_$CityDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityDataImplToJson(this);
  }
}

abstract class _CityData implements CityData {
  const factory _CityData({
    required final String name,
    required final String country,
  }) = _$CityDataImpl;

  factory _CityData.fromJson(Map<String, dynamic> json) =
      _$CityDataImpl.fromJson;

  @override
  String get name;
  @override
  String get country;

  /// Create a copy of CityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityDataImplCopyWith<_$CityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
