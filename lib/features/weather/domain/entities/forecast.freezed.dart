// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return _Forecast.fromJson(json);
}

/// @nodoc
mixin _$Forecast {
  List<ForecastItem> get items => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;

  /// Serializes this Forecast to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastCopyWith<Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) then) =
      _$ForecastCopyWithImpl<$Res, Forecast>;
  @useResult
  $Res call({List<ForecastItem> items, String cityName});
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res, $Val extends Forecast>
    implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? cityName = null}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ForecastItem>,
            cityName: null == cityName
                ? _value.cityName
                : cityName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ForecastImplCopyWith<$Res>
    implements $ForecastCopyWith<$Res> {
  factory _$$ForecastImplCopyWith(
    _$ForecastImpl value,
    $Res Function(_$ForecastImpl) then,
  ) = __$$ForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ForecastItem> items, String cityName});
}

/// @nodoc
class __$$ForecastImplCopyWithImpl<$Res>
    extends _$ForecastCopyWithImpl<$Res, _$ForecastImpl>
    implements _$$ForecastImplCopyWith<$Res> {
  __$$ForecastImplCopyWithImpl(
    _$ForecastImpl _value,
    $Res Function(_$ForecastImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? cityName = null}) {
    return _then(
      _$ForecastImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ForecastItem>,
        cityName: null == cityName
            ? _value.cityName
            : cityName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastImpl implements _Forecast {
  const _$ForecastImpl({
    required final List<ForecastItem> items,
    required this.cityName,
  }) : _items = items;

  factory _$ForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastImplFromJson(json);

  final List<ForecastItem> _items;
  @override
  List<ForecastItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String cityName;

  @override
  String toString() {
    return 'Forecast(items: $items, cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    cityName,
  );

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastImplCopyWith<_$ForecastImpl> get copyWith =>
      __$$ForecastImplCopyWithImpl<_$ForecastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastImplToJson(this);
  }
}

abstract class _Forecast implements Forecast {
  const factory _Forecast({
    required final List<ForecastItem> items,
    required final String cityName,
  }) = _$ForecastImpl;

  factory _Forecast.fromJson(Map<String, dynamic> json) =
      _$ForecastImpl.fromJson;

  @override
  List<ForecastItem> get items;
  @override
  String get cityName;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastImplCopyWith<_$ForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastItem _$ForecastItemFromJson(Map<String, dynamic> json) {
  return _ForecastItem.fromJson(json);
}

/// @nodoc
mixin _$ForecastItem {
  DateTime get dateTime => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get tempMin => throw _privateConstructorUsedError;
  double get tempMax => throw _privateConstructorUsedError;
  WeatherCondition get condition => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;

  /// Serializes this ForecastItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastItemCopyWith<ForecastItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastItemCopyWith<$Res> {
  factory $ForecastItemCopyWith(
    ForecastItem value,
    $Res Function(ForecastItem) then,
  ) = _$ForecastItemCopyWithImpl<$Res, ForecastItem>;
  @useResult
  $Res call({
    DateTime dateTime,
    double temperature,
    double tempMin,
    double tempMax,
    WeatherCondition condition,
    String description,
    int humidity,
    double windSpeed,
  });
}

/// @nodoc
class _$ForecastItemCopyWithImpl<$Res, $Val extends ForecastItem>
    implements $ForecastItemCopyWith<$Res> {
  _$ForecastItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? temperature = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? condition = null,
    Object? description = null,
    Object? humidity = null,
    Object? windSpeed = null,
  }) {
    return _then(
      _value.copyWith(
            dateTime: null == dateTime
                ? _value.dateTime
                : dateTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            temperature: null == temperature
                ? _value.temperature
                : temperature // ignore: cast_nullable_to_non_nullable
                      as double,
            tempMin: null == tempMin
                ? _value.tempMin
                : tempMin // ignore: cast_nullable_to_non_nullable
                      as double,
            tempMax: null == tempMax
                ? _value.tempMax
                : tempMax // ignore: cast_nullable_to_non_nullable
                      as double,
            condition: null == condition
                ? _value.condition
                : condition // ignore: cast_nullable_to_non_nullable
                      as WeatherCondition,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            humidity: null == humidity
                ? _value.humidity
                : humidity // ignore: cast_nullable_to_non_nullable
                      as int,
            windSpeed: null == windSpeed
                ? _value.windSpeed
                : windSpeed // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ForecastItemImplCopyWith<$Res>
    implements $ForecastItemCopyWith<$Res> {
  factory _$$ForecastItemImplCopyWith(
    _$ForecastItemImpl value,
    $Res Function(_$ForecastItemImpl) then,
  ) = __$$ForecastItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime dateTime,
    double temperature,
    double tempMin,
    double tempMax,
    WeatherCondition condition,
    String description,
    int humidity,
    double windSpeed,
  });
}

/// @nodoc
class __$$ForecastItemImplCopyWithImpl<$Res>
    extends _$ForecastItemCopyWithImpl<$Res, _$ForecastItemImpl>
    implements _$$ForecastItemImplCopyWith<$Res> {
  __$$ForecastItemImplCopyWithImpl(
    _$ForecastItemImpl _value,
    $Res Function(_$ForecastItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? temperature = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? condition = null,
    Object? description = null,
    Object? humidity = null,
    Object? windSpeed = null,
  }) {
    return _then(
      _$ForecastItemImpl(
        dateTime: null == dateTime
            ? _value.dateTime
            : dateTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        temperature: null == temperature
            ? _value.temperature
            : temperature // ignore: cast_nullable_to_non_nullable
                  as double,
        tempMin: null == tempMin
            ? _value.tempMin
            : tempMin // ignore: cast_nullable_to_non_nullable
                  as double,
        tempMax: null == tempMax
            ? _value.tempMax
            : tempMax // ignore: cast_nullable_to_non_nullable
                  as double,
        condition: null == condition
            ? _value.condition
            : condition // ignore: cast_nullable_to_non_nullable
                  as WeatherCondition,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        humidity: null == humidity
            ? _value.humidity
            : humidity // ignore: cast_nullable_to_non_nullable
                  as int,
        windSpeed: null == windSpeed
            ? _value.windSpeed
            : windSpeed // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastItemImpl extends _ForecastItem {
  const _$ForecastItemImpl({
    required this.dateTime,
    required this.temperature,
    required this.tempMin,
    required this.tempMax,
    required this.condition,
    required this.description,
    required this.humidity,
    required this.windSpeed,
  }) : super._();

  factory _$ForecastItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastItemImplFromJson(json);

  @override
  final DateTime dateTime;
  @override
  final double temperature;
  @override
  final double tempMin;
  @override
  final double tempMax;
  @override
  final WeatherCondition condition;
  @override
  final String description;
  @override
  final int humidity;
  @override
  final double windSpeed;

  @override
  String toString() {
    return 'ForecastItem(dateTime: $dateTime, temperature: $temperature, tempMin: $tempMin, tempMax: $tempMax, condition: $condition, description: $description, humidity: $humidity, windSpeed: $windSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastItemImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    dateTime,
    temperature,
    tempMin,
    tempMax,
    condition,
    description,
    humidity,
    windSpeed,
  );

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastItemImplCopyWith<_$ForecastItemImpl> get copyWith =>
      __$$ForecastItemImplCopyWithImpl<_$ForecastItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastItemImplToJson(this);
  }
}

abstract class _ForecastItem extends ForecastItem {
  const factory _ForecastItem({
    required final DateTime dateTime,
    required final double temperature,
    required final double tempMin,
    required final double tempMax,
    required final WeatherCondition condition,
    required final String description,
    required final int humidity,
    required final double windSpeed,
  }) = _$ForecastItemImpl;
  const _ForecastItem._() : super._();

  factory _ForecastItem.fromJson(Map<String, dynamic> json) =
      _$ForecastItemImpl.fromJson;

  @override
  DateTime get dateTime;
  @override
  double get temperature;
  @override
  double get tempMin;
  @override
  double get tempMax;
  @override
  WeatherCondition get condition;
  @override
  String get description;
  @override
  int get humidity;
  @override
  double get windSpeed;

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastItemImplCopyWith<_$ForecastItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
