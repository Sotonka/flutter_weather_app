// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_forecast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherForecastEvent {
  String get city => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String city, int days) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String city, int days)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String city, int days)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherForecastEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherForecastEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherForecastEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherForecastEventCopyWith<WeatherForecastEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastEventCopyWith<$Res> {
  factory $WeatherForecastEventCopyWith(WeatherForecastEvent value,
          $Res Function(WeatherForecastEvent) then) =
      _$WeatherForecastEventCopyWithImpl<$Res>;
  $Res call({String city, int days});
}

/// @nodoc
class _$WeatherForecastEventCopyWithImpl<$Res>
    implements $WeatherForecastEventCopyWith<$Res> {
  _$WeatherForecastEventCopyWithImpl(this._value, this._then);

  final WeatherForecastEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherForecastEvent) _then;

  @override
  $Res call({
    Object? city = freezed,
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$WeatherForecastEventFetchCopyWith<$Res>
    implements $WeatherForecastEventCopyWith<$Res> {
  factory _$$WeatherForecastEventFetchCopyWith(
          _$WeatherForecastEventFetch value,
          $Res Function(_$WeatherForecastEventFetch) then) =
      __$$WeatherForecastEventFetchCopyWithImpl<$Res>;
  @override
  $Res call({String city, int days});
}

/// @nodoc
class __$$WeatherForecastEventFetchCopyWithImpl<$Res>
    extends _$WeatherForecastEventCopyWithImpl<$Res>
    implements _$$WeatherForecastEventFetchCopyWith<$Res> {
  __$$WeatherForecastEventFetchCopyWithImpl(_$WeatherForecastEventFetch _value,
      $Res Function(_$WeatherForecastEventFetch) _then)
      : super(_value, (v) => _then(v as _$WeatherForecastEventFetch));

  @override
  _$WeatherForecastEventFetch get _value =>
      super._value as _$WeatherForecastEventFetch;

  @override
  $Res call({
    Object? city = freezed,
    Object? days = freezed,
  }) {
    return _then(_$WeatherForecastEventFetch(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WeatherForecastEventFetch implements WeatherForecastEventFetch {
  const _$WeatherForecastEventFetch({required this.city, required this.days});

  @override
  final String city;
  @override
  final int days;

  @override
  String toString() {
    return 'WeatherForecastEvent.fetch(city: $city, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastEventFetch &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.days, days));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(days));

  @JsonKey(ignore: true)
  @override
  _$$WeatherForecastEventFetchCopyWith<_$WeatherForecastEventFetch>
      get copyWith => __$$WeatherForecastEventFetchCopyWithImpl<
          _$WeatherForecastEventFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String city, int days) fetch,
  }) {
    return fetch(city, days);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String city, int days)? fetch,
  }) {
    return fetch?.call(city, days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String city, int days)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(city, days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherForecastEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherForecastEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherForecastEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class WeatherForecastEventFetch implements WeatherForecastEvent {
  const factory WeatherForecastEventFetch(
      {required final String city,
      required final int days}) = _$WeatherForecastEventFetch;

  @override
  String get city => throw _privateConstructorUsedError;
  @override
  int get days => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastEventFetchCopyWith<_$WeatherForecastEventFetch>
      get copyWith => throw _privateConstructorUsedError;
}

WeatherForecastState _$WeatherForecastStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return WeatherForecastStateLoading.fromJson(json);
    case 'loaded':
      return WeatherForecastStateLoaded.fromJson(json);
    case 'error':
      return WeatherForecastStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'WeatherForecastState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WeatherForecastState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WeatherData weatherForecastLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherData weatherForecastLoaded)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherData weatherForecastLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherForecastStateLoading value) loading,
    required TResult Function(WeatherForecastStateLoaded value) loaded,
    required TResult Function(WeatherForecastStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherForecastStateLoading value)? loading,
    TResult Function(WeatherForecastStateLoaded value)? loaded,
    TResult Function(WeatherForecastStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherForecastStateLoading value)? loading,
    TResult Function(WeatherForecastStateLoaded value)? loaded,
    TResult Function(WeatherForecastStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastStateCopyWith<$Res> {
  factory $WeatherForecastStateCopyWith(WeatherForecastState value,
          $Res Function(WeatherForecastState) then) =
      _$WeatherForecastStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherForecastStateCopyWithImpl<$Res>
    implements $WeatherForecastStateCopyWith<$Res> {
  _$WeatherForecastStateCopyWithImpl(this._value, this._then);

  final WeatherForecastState _value;
  // ignore: unused_field
  final $Res Function(WeatherForecastState) _then;
}

/// @nodoc
abstract class _$$WeatherForecastStateLoadingCopyWith<$Res> {
  factory _$$WeatherForecastStateLoadingCopyWith(
          _$WeatherForecastStateLoading value,
          $Res Function(_$WeatherForecastStateLoading) then) =
      __$$WeatherForecastStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherForecastStateLoadingCopyWithImpl<$Res>
    extends _$WeatherForecastStateCopyWithImpl<$Res>
    implements _$$WeatherForecastStateLoadingCopyWith<$Res> {
  __$$WeatherForecastStateLoadingCopyWithImpl(
      _$WeatherForecastStateLoading _value,
      $Res Function(_$WeatherForecastStateLoading) _then)
      : super(_value, (v) => _then(v as _$WeatherForecastStateLoading));

  @override
  _$WeatherForecastStateLoading get _value =>
      super._value as _$WeatherForecastStateLoading;
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastStateLoading implements WeatherForecastStateLoading {
  const _$WeatherForecastStateLoading({final String? $type})
      : $type = $type ?? 'loading';

  factory _$WeatherForecastStateLoading.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastStateLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherForecastState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastStateLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WeatherData weatherForecastLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherData weatherForecastLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherData weatherForecastLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherForecastStateLoading value) loading,
    required TResult Function(WeatherForecastStateLoaded value) loaded,
    required TResult Function(WeatherForecastStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherForecastStateLoading value)? loading,
    TResult Function(WeatherForecastStateLoaded value)? loaded,
    TResult Function(WeatherForecastStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherForecastStateLoading value)? loading,
    TResult Function(WeatherForecastStateLoaded value)? loaded,
    TResult Function(WeatherForecastStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastStateLoadingToJson(this);
  }
}

abstract class WeatherForecastStateLoading implements WeatherForecastState {
  const factory WeatherForecastStateLoading() = _$WeatherForecastStateLoading;

  factory WeatherForecastStateLoading.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastStateLoading.fromJson;
}

/// @nodoc
abstract class _$$WeatherForecastStateLoadedCopyWith<$Res> {
  factory _$$WeatherForecastStateLoadedCopyWith(
          _$WeatherForecastStateLoaded value,
          $Res Function(_$WeatherForecastStateLoaded) then) =
      __$$WeatherForecastStateLoadedCopyWithImpl<$Res>;
  $Res call({WeatherData weatherForecastLoaded});

  $WeatherDataCopyWith<$Res> get weatherForecastLoaded;
}

/// @nodoc
class __$$WeatherForecastStateLoadedCopyWithImpl<$Res>
    extends _$WeatherForecastStateCopyWithImpl<$Res>
    implements _$$WeatherForecastStateLoadedCopyWith<$Res> {
  __$$WeatherForecastStateLoadedCopyWithImpl(
      _$WeatherForecastStateLoaded _value,
      $Res Function(_$WeatherForecastStateLoaded) _then)
      : super(_value, (v) => _then(v as _$WeatherForecastStateLoaded));

  @override
  _$WeatherForecastStateLoaded get _value =>
      super._value as _$WeatherForecastStateLoaded;

  @override
  $Res call({
    Object? weatherForecastLoaded = freezed,
  }) {
    return _then(_$WeatherForecastStateLoaded(
      weatherForecastLoaded: weatherForecastLoaded == freezed
          ? _value.weatherForecastLoaded
          : weatherForecastLoaded // ignore: cast_nullable_to_non_nullable
              as WeatherData,
    ));
  }

  @override
  $WeatherDataCopyWith<$Res> get weatherForecastLoaded {
    return $WeatherDataCopyWith<$Res>(_value.weatherForecastLoaded, (value) {
      return _then(_value.copyWith(weatherForecastLoaded: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastStateLoaded implements WeatherForecastStateLoaded {
  const _$WeatherForecastStateLoaded(
      {required this.weatherForecastLoaded, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$WeatherForecastStateLoaded.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastStateLoadedFromJson(json);

  @override
  final WeatherData weatherForecastLoaded;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherForecastState.loaded(weatherForecastLoaded: $weatherForecastLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.weatherForecastLoaded, weatherForecastLoaded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(weatherForecastLoaded));

  @JsonKey(ignore: true)
  @override
  _$$WeatherForecastStateLoadedCopyWith<_$WeatherForecastStateLoaded>
      get copyWith => __$$WeatherForecastStateLoadedCopyWithImpl<
          _$WeatherForecastStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WeatherData weatherForecastLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(weatherForecastLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherData weatherForecastLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(weatherForecastLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherData weatherForecastLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(weatherForecastLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherForecastStateLoading value) loading,
    required TResult Function(WeatherForecastStateLoaded value) loaded,
    required TResult Function(WeatherForecastStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherForecastStateLoading value)? loading,
    TResult Function(WeatherForecastStateLoaded value)? loaded,
    TResult Function(WeatherForecastStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherForecastStateLoading value)? loading,
    TResult Function(WeatherForecastStateLoaded value)? loaded,
    TResult Function(WeatherForecastStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastStateLoadedToJson(this);
  }
}

abstract class WeatherForecastStateLoaded implements WeatherForecastState {
  const factory WeatherForecastStateLoaded(
          {required final WeatherData weatherForecastLoaded}) =
      _$WeatherForecastStateLoaded;

  factory WeatherForecastStateLoaded.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastStateLoaded.fromJson;

  WeatherData get weatherForecastLoaded => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$WeatherForecastStateLoadedCopyWith<_$WeatherForecastStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherForecastStateErrorCopyWith<$Res> {
  factory _$$WeatherForecastStateErrorCopyWith(
          _$WeatherForecastStateError value,
          $Res Function(_$WeatherForecastStateError) then) =
      __$$WeatherForecastStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherForecastStateErrorCopyWithImpl<$Res>
    extends _$WeatherForecastStateCopyWithImpl<$Res>
    implements _$$WeatherForecastStateErrorCopyWith<$Res> {
  __$$WeatherForecastStateErrorCopyWithImpl(_$WeatherForecastStateError _value,
      $Res Function(_$WeatherForecastStateError) _then)
      : super(_value, (v) => _then(v as _$WeatherForecastStateError));

  @override
  _$WeatherForecastStateError get _value =>
      super._value as _$WeatherForecastStateError;
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastStateError implements WeatherForecastStateError {
  const _$WeatherForecastStateError({final String? $type})
      : $type = $type ?? 'error';

  factory _$WeatherForecastStateError.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastStateErrorFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherForecastState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastStateError);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WeatherData weatherForecastLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherData weatherForecastLoaded)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherData weatherForecastLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherForecastStateLoading value) loading,
    required TResult Function(WeatherForecastStateLoaded value) loaded,
    required TResult Function(WeatherForecastStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherForecastStateLoading value)? loading,
    TResult Function(WeatherForecastStateLoaded value)? loaded,
    TResult Function(WeatherForecastStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherForecastStateLoading value)? loading,
    TResult Function(WeatherForecastStateLoaded value)? loaded,
    TResult Function(WeatherForecastStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastStateErrorToJson(this);
  }
}

abstract class WeatherForecastStateError implements WeatherForecastState {
  const factory WeatherForecastStateError() = _$WeatherForecastStateError;

  factory WeatherForecastStateError.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastStateError.fromJson;
}
