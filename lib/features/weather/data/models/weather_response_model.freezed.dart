// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WeatherResponseModel _$WeatherResponseModelFromJson(Map<String, dynamic> json) {
  return _WeatherResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponseModel {
  MainData get main => throw _privateConstructorUsedError;
  List<WeatherData> get weather => throw _privateConstructorUsedError;
  WindData get wind => throw _privateConstructorUsedError;
  CloudsData get clouds => throw _privateConstructorUsedError;
  SysData get sys => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get dt => throw _privateConstructorUsedError;

  /// Serializes this WeatherResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherResponseModelCopyWith<WeatherResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseModelCopyWith<$Res> {
  factory $WeatherResponseModelCopyWith(
    WeatherResponseModel value,
    $Res Function(WeatherResponseModel) then,
  ) = _$WeatherResponseModelCopyWithImpl<$Res, WeatherResponseModel>;
  @useResult
  $Res call({
    MainData main,
    List<WeatherData> weather,
    WindData wind,
    CloudsData clouds,
    SysData sys,
    int visibility,
    String name,
    int dt,
  });

  $MainDataCopyWith<$Res> get main;
  $WindDataCopyWith<$Res> get wind;
  $CloudsDataCopyWith<$Res> get clouds;
  $SysDataCopyWith<$Res> get sys;
}

/// @nodoc
class _$WeatherResponseModelCopyWithImpl<
  $Res,
  $Val extends WeatherResponseModel
>
    implements $WeatherResponseModelCopyWith<$Res> {
  _$WeatherResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? weather = null,
    Object? wind = null,
    Object? clouds = null,
    Object? sys = null,
    Object? visibility = null,
    Object? name = null,
    Object? dt = null,
  }) {
    return _then(
      _value.copyWith(
            main: null == main
                ? _value.main
                : main // ignore: cast_nullable_to_non_nullable
                      as MainData,
            weather: null == weather
                ? _value.weather
                : weather // ignore: cast_nullable_to_non_nullable
                      as List<WeatherData>,
            wind: null == wind
                ? _value.wind
                : wind // ignore: cast_nullable_to_non_nullable
                      as WindData,
            clouds: null == clouds
                ? _value.clouds
                : clouds // ignore: cast_nullable_to_non_nullable
                      as CloudsData,
            sys: null == sys
                ? _value.sys
                : sys // ignore: cast_nullable_to_non_nullable
                      as SysData,
            visibility: null == visibility
                ? _value.visibility
                : visibility // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            dt: null == dt
                ? _value.dt
                : dt // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of WeatherResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainDataCopyWith<$Res> get main {
    return $MainDataCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindDataCopyWith<$Res> get wind {
    return $WindDataCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CloudsDataCopyWith<$Res> get clouds {
    return $CloudsDataCopyWith<$Res>(_value.clouds, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SysDataCopyWith<$Res> get sys {
    return $SysDataCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherResponseModelImplCopyWith<$Res>
    implements $WeatherResponseModelCopyWith<$Res> {
  factory _$$WeatherResponseModelImplCopyWith(
    _$WeatherResponseModelImpl value,
    $Res Function(_$WeatherResponseModelImpl) then,
  ) = __$$WeatherResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    MainData main,
    List<WeatherData> weather,
    WindData wind,
    CloudsData clouds,
    SysData sys,
    int visibility,
    String name,
    int dt,
  });

  @override
  $MainDataCopyWith<$Res> get main;
  @override
  $WindDataCopyWith<$Res> get wind;
  @override
  $CloudsDataCopyWith<$Res> get clouds;
  @override
  $SysDataCopyWith<$Res> get sys;
}

/// @nodoc
class __$$WeatherResponseModelImplCopyWithImpl<$Res>
    extends _$WeatherResponseModelCopyWithImpl<$Res, _$WeatherResponseModelImpl>
    implements _$$WeatherResponseModelImplCopyWith<$Res> {
  __$$WeatherResponseModelImplCopyWithImpl(
    _$WeatherResponseModelImpl _value,
    $Res Function(_$WeatherResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? weather = null,
    Object? wind = null,
    Object? clouds = null,
    Object? sys = null,
    Object? visibility = null,
    Object? name = null,
    Object? dt = null,
  }) {
    return _then(
      _$WeatherResponseModelImpl(
        main: null == main
            ? _value.main
            : main // ignore: cast_nullable_to_non_nullable
                  as MainData,
        weather: null == weather
            ? _value._weather
            : weather // ignore: cast_nullable_to_non_nullable
                  as List<WeatherData>,
        wind: null == wind
            ? _value.wind
            : wind // ignore: cast_nullable_to_non_nullable
                  as WindData,
        clouds: null == clouds
            ? _value.clouds
            : clouds // ignore: cast_nullable_to_non_nullable
                  as CloudsData,
        sys: null == sys
            ? _value.sys
            : sys // ignore: cast_nullable_to_non_nullable
                  as SysData,
        visibility: null == visibility
            ? _value.visibility
            : visibility // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        dt: null == dt
            ? _value.dt
            : dt // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResponseModelImpl extends _WeatherResponseModel {
  const _$WeatherResponseModelImpl({
    required this.main,
    required final List<WeatherData> weather,
    required this.wind,
    required this.clouds,
    required this.sys,
    required this.visibility,
    required this.name,
    required this.dt,
  }) : _weather = weather,
       super._();

  factory _$WeatherResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseModelImplFromJson(json);

  @override
  final MainData main;
  final List<WeatherData> _weather;
  @override
  List<WeatherData> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final WindData wind;
  @override
  final CloudsData clouds;
  @override
  final SysData sys;
  @override
  final int visibility;
  @override
  final String name;
  @override
  final int dt;

  @override
  String toString() {
    return 'WeatherResponseModel(main: $main, weather: $weather, wind: $wind, clouds: $clouds, sys: $sys, visibility: $visibility, name: $name, dt: $dt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseModelImpl &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    main,
    const DeepCollectionEquality().hash(_weather),
    wind,
    clouds,
    sys,
    visibility,
    name,
    dt,
  );

  /// Create a copy of WeatherResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseModelImplCopyWith<_$WeatherResponseModelImpl>
  get copyWith =>
      __$$WeatherResponseModelImplCopyWithImpl<_$WeatherResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseModelImplToJson(this);
  }
}

abstract class _WeatherResponseModel extends WeatherResponseModel {
  const factory _WeatherResponseModel({
    required final MainData main,
    required final List<WeatherData> weather,
    required final WindData wind,
    required final CloudsData clouds,
    required final SysData sys,
    required final int visibility,
    required final String name,
    required final int dt,
  }) = _$WeatherResponseModelImpl;
  const _WeatherResponseModel._() : super._();

  factory _WeatherResponseModel.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseModelImpl.fromJson;

  @override
  MainData get main;
  @override
  List<WeatherData> get weather;
  @override
  WindData get wind;
  @override
  CloudsData get clouds;
  @override
  SysData get sys;
  @override
  int get visibility;
  @override
  String get name;
  @override
  int get dt;

  /// Create a copy of WeatherResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherResponseModelImplCopyWith<_$WeatherResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

MainData _$MainDataFromJson(Map<String, dynamic> json) {
  return _MainData.fromJson(json);
}

/// @nodoc
mixin _$MainData {
  double get temp => throw _privateConstructorUsedError;
  double get feelsLike => throw _privateConstructorUsedError;
  double get tempMin => throw _privateConstructorUsedError;
  double get tempMax => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  /// Serializes this MainData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainDataCopyWith<MainData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDataCopyWith<$Res> {
  factory $MainDataCopyWith(MainData value, $Res Function(MainData) then) =
      _$MainDataCopyWithImpl<$Res, MainData>;
  @useResult
  $Res call({
    double temp,
    double feelsLike,
    double tempMin,
    double tempMax,
    int pressure,
    int humidity,
  });
}

/// @nodoc
class _$MainDataCopyWithImpl<$Res, $Val extends MainData>
    implements $MainDataCopyWith<$Res> {
  _$MainDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(
      _value.copyWith(
            temp: null == temp
                ? _value.temp
                : temp // ignore: cast_nullable_to_non_nullable
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
            pressure: null == pressure
                ? _value.pressure
                : pressure // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$MainDataImplCopyWith<$Res>
    implements $MainDataCopyWith<$Res> {
  factory _$$MainDataImplCopyWith(
    _$MainDataImpl value,
    $Res Function(_$MainDataImpl) then,
  ) = __$$MainDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double temp,
    double feelsLike,
    double tempMin,
    double tempMax,
    int pressure,
    int humidity,
  });
}

/// @nodoc
class __$$MainDataImplCopyWithImpl<$Res>
    extends _$MainDataCopyWithImpl<$Res, _$MainDataImpl>
    implements _$$MainDataImplCopyWith<$Res> {
  __$$MainDataImplCopyWithImpl(
    _$MainDataImpl _value,
    $Res Function(_$MainDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(
      _$MainDataImpl(
        temp: null == temp
            ? _value.temp
            : temp // ignore: cast_nullable_to_non_nullable
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
        pressure: null == pressure
            ? _value.pressure
            : pressure // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$MainDataImpl implements _MainData {
  const _$MainDataImpl({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  factory _$MainDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainDataImplFromJson(json);

  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final double tempMin;
  @override
  final double tempMax;
  @override
  final int pressure;
  @override
  final int humidity;

  @override
  String toString() {
    return 'MainData(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainDataImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    temp,
    feelsLike,
    tempMin,
    tempMax,
    pressure,
    humidity,
  );

  /// Create a copy of MainData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainDataImplCopyWith<_$MainDataImpl> get copyWith =>
      __$$MainDataImplCopyWithImpl<_$MainDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainDataImplToJson(this);
  }
}

abstract class _MainData implements MainData {
  const factory _MainData({
    required final double temp,
    required final double feelsLike,
    required final double tempMin,
    required final double tempMax,
    required final int pressure,
    required final int humidity,
  }) = _$MainDataImpl;

  factory _MainData.fromJson(Map<String, dynamic> json) =
      _$MainDataImpl.fromJson;

  @override
  double get temp;
  @override
  double get feelsLike;
  @override
  double get tempMin;
  @override
  double get tempMax;
  @override
  int get pressure;
  @override
  int get humidity;

  /// Create a copy of MainData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainDataImplCopyWith<_$MainDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) {
  return _WeatherData.fromJson(json);
}

/// @nodoc
mixin _$WeatherData {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this WeatherData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> {
  factory $WeatherDataCopyWith(
    WeatherData value,
    $Res Function(WeatherData) then,
  ) = _$WeatherDataCopyWithImpl<$Res, WeatherData>;
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res, $Val extends WeatherData>
    implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
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
            icon: null == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeatherDataImplCopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$$WeatherDataImplCopyWith(
    _$WeatherDataImpl value,
    $Res Function(_$WeatherDataImpl) then,
  ) = __$$WeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class __$$WeatherDataImplCopyWithImpl<$Res>
    extends _$WeatherDataCopyWithImpl<$Res, _$WeatherDataImpl>
    implements _$$WeatherDataImplCopyWith<$Res> {
  __$$WeatherDataImplCopyWithImpl(
    _$WeatherDataImpl _value,
    $Res Function(_$WeatherDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(
      _$WeatherDataImpl(
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
        icon: null == icon
            ? _value.icon
            : icon // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDataImpl implements _WeatherData {
  const _$WeatherDataImpl({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory _$WeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDataImplFromJson(json);

  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherData(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  /// Create a copy of WeatherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDataImplCopyWith<_$WeatherDataImpl> get copyWith =>
      __$$WeatherDataImplCopyWithImpl<_$WeatherDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDataImplToJson(this);
  }
}

abstract class _WeatherData implements WeatherData {
  const factory _WeatherData({
    required final int id,
    required final String main,
    required final String description,
    required final String icon,
  }) = _$WeatherDataImpl;

  factory _WeatherData.fromJson(Map<String, dynamic> json) =
      _$WeatherDataImpl.fromJson;

  @override
  int get id;
  @override
  String get main;
  @override
  String get description;
  @override
  String get icon;

  /// Create a copy of WeatherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherDataImplCopyWith<_$WeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WindData _$WindDataFromJson(Map<String, dynamic> json) {
  return _WindData.fromJson(json);
}

/// @nodoc
mixin _$WindData {
  double get speed => throw _privateConstructorUsedError;
  int get deg => throw _privateConstructorUsedError;

  /// Serializes this WindData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WindData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WindDataCopyWith<WindData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindDataCopyWith<$Res> {
  factory $WindDataCopyWith(WindData value, $Res Function(WindData) then) =
      _$WindDataCopyWithImpl<$Res, WindData>;
  @useResult
  $Res call({double speed, int deg});
}

/// @nodoc
class _$WindDataCopyWithImpl<$Res, $Val extends WindData>
    implements $WindDataCopyWith<$Res> {
  _$WindDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WindData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? speed = null, Object? deg = null}) {
    return _then(
      _value.copyWith(
            speed: null == speed
                ? _value.speed
                : speed // ignore: cast_nullable_to_non_nullable
                      as double,
            deg: null == deg
                ? _value.deg
                : deg // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WindDataImplCopyWith<$Res>
    implements $WindDataCopyWith<$Res> {
  factory _$$WindDataImplCopyWith(
    _$WindDataImpl value,
    $Res Function(_$WindDataImpl) then,
  ) = __$$WindDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed, int deg});
}

/// @nodoc
class __$$WindDataImplCopyWithImpl<$Res>
    extends _$WindDataCopyWithImpl<$Res, _$WindDataImpl>
    implements _$$WindDataImplCopyWith<$Res> {
  __$$WindDataImplCopyWithImpl(
    _$WindDataImpl _value,
    $Res Function(_$WindDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WindData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? speed = null, Object? deg = null}) {
    return _then(
      _$WindDataImpl(
        speed: null == speed
            ? _value.speed
            : speed // ignore: cast_nullable_to_non_nullable
                  as double,
        deg: null == deg
            ? _value.deg
            : deg // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WindDataImpl implements _WindData {
  const _$WindDataImpl({required this.speed, this.deg = 0});

  factory _$WindDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindDataImplFromJson(json);

  @override
  final double speed;
  @override
  @JsonKey()
  final int deg;

  @override
  String toString() {
    return 'WindData(speed: $speed, deg: $deg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindDataImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speed, deg);

  /// Create a copy of WindData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WindDataImplCopyWith<_$WindDataImpl> get copyWith =>
      __$$WindDataImplCopyWithImpl<_$WindDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindDataImplToJson(this);
  }
}

abstract class _WindData implements WindData {
  const factory _WindData({required final double speed, final int deg}) =
      _$WindDataImpl;

  factory _WindData.fromJson(Map<String, dynamic> json) =
      _$WindDataImpl.fromJson;

  @override
  double get speed;
  @override
  int get deg;

  /// Create a copy of WindData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WindDataImplCopyWith<_$WindDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CloudsData _$CloudsDataFromJson(Map<String, dynamic> json) {
  return _CloudsData.fromJson(json);
}

/// @nodoc
mixin _$CloudsData {
  int get all => throw _privateConstructorUsedError;

  /// Serializes this CloudsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CloudsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CloudsDataCopyWith<CloudsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudsDataCopyWith<$Res> {
  factory $CloudsDataCopyWith(
    CloudsData value,
    $Res Function(CloudsData) then,
  ) = _$CloudsDataCopyWithImpl<$Res, CloudsData>;
  @useResult
  $Res call({int all});
}

/// @nodoc
class _$CloudsDataCopyWithImpl<$Res, $Val extends CloudsData>
    implements $CloudsDataCopyWith<$Res> {
  _$CloudsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CloudsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? all = null}) {
    return _then(
      _value.copyWith(
            all: null == all
                ? _value.all
                : all // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CloudsDataImplCopyWith<$Res>
    implements $CloudsDataCopyWith<$Res> {
  factory _$$CloudsDataImplCopyWith(
    _$CloudsDataImpl value,
    $Res Function(_$CloudsDataImpl) then,
  ) = __$$CloudsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int all});
}

/// @nodoc
class __$$CloudsDataImplCopyWithImpl<$Res>
    extends _$CloudsDataCopyWithImpl<$Res, _$CloudsDataImpl>
    implements _$$CloudsDataImplCopyWith<$Res> {
  __$$CloudsDataImplCopyWithImpl(
    _$CloudsDataImpl _value,
    $Res Function(_$CloudsDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CloudsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? all = null}) {
    return _then(
      _$CloudsDataImpl(
        all: null == all
            ? _value.all
            : all // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CloudsDataImpl implements _CloudsData {
  const _$CloudsDataImpl({required this.all});

  factory _$CloudsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloudsDataImplFromJson(json);

  @override
  final int all;

  @override
  String toString() {
    return 'CloudsData(all: $all)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudsDataImpl &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, all);

  /// Create a copy of CloudsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudsDataImplCopyWith<_$CloudsDataImpl> get copyWith =>
      __$$CloudsDataImplCopyWithImpl<_$CloudsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloudsDataImplToJson(this);
  }
}

abstract class _CloudsData implements CloudsData {
  const factory _CloudsData({required final int all}) = _$CloudsDataImpl;

  factory _CloudsData.fromJson(Map<String, dynamic> json) =
      _$CloudsDataImpl.fromJson;

  @override
  int get all;

  /// Create a copy of CloudsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CloudsDataImplCopyWith<_$CloudsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SysData _$SysDataFromJson(Map<String, dynamic> json) {
  return _SysData.fromJson(json);
}

/// @nodoc
mixin _$SysData {
  String get country => throw _privateConstructorUsedError;
  int get sunrise => throw _privateConstructorUsedError;
  int get sunset => throw _privateConstructorUsedError;

  /// Serializes this SysData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SysData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SysDataCopyWith<SysData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysDataCopyWith<$Res> {
  factory $SysDataCopyWith(SysData value, $Res Function(SysData) then) =
      _$SysDataCopyWithImpl<$Res, SysData>;
  @useResult
  $Res call({String country, int sunrise, int sunset});
}

/// @nodoc
class _$SysDataCopyWithImpl<$Res, $Val extends SysData>
    implements $SysDataCopyWith<$Res> {
  _$SysDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SysData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(
      _value.copyWith(
            country: null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String,
            sunrise: null == sunrise
                ? _value.sunrise
                : sunrise // ignore: cast_nullable_to_non_nullable
                      as int,
            sunset: null == sunset
                ? _value.sunset
                : sunset // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SysDataImplCopyWith<$Res> implements $SysDataCopyWith<$Res> {
  factory _$$SysDataImplCopyWith(
    _$SysDataImpl value,
    $Res Function(_$SysDataImpl) then,
  ) = __$$SysDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String country, int sunrise, int sunset});
}

/// @nodoc
class __$$SysDataImplCopyWithImpl<$Res>
    extends _$SysDataCopyWithImpl<$Res, _$SysDataImpl>
    implements _$$SysDataImplCopyWith<$Res> {
  __$$SysDataImplCopyWithImpl(
    _$SysDataImpl _value,
    $Res Function(_$SysDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SysData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(
      _$SysDataImpl(
        country: null == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String,
        sunrise: null == sunrise
            ? _value.sunrise
            : sunrise // ignore: cast_nullable_to_non_nullable
                  as int,
        sunset: null == sunset
            ? _value.sunset
            : sunset // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SysDataImpl implements _SysData {
  const _$SysDataImpl({
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  factory _$SysDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SysDataImplFromJson(json);

  @override
  final String country;
  @override
  final int sunrise;
  @override
  final int sunset;

  @override
  String toString() {
    return 'SysData(country: $country, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SysDataImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, country, sunrise, sunset);

  /// Create a copy of SysData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SysDataImplCopyWith<_$SysDataImpl> get copyWith =>
      __$$SysDataImplCopyWithImpl<_$SysDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SysDataImplToJson(this);
  }
}

abstract class _SysData implements SysData {
  const factory _SysData({
    required final String country,
    required final int sunrise,
    required final int sunset,
  }) = _$SysDataImpl;

  factory _SysData.fromJson(Map<String, dynamic> json) = _$SysDataImpl.fromJson;

  @override
  String get country;
  @override
  int get sunrise;
  @override
  int get sunset;

  /// Create a copy of SysData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SysDataImplCopyWith<_$SysDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
