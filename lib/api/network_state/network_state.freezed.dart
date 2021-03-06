// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkStateTearOff {
  const _$NetworkStateTearOff();

  _Data<T> call<T>(T? data) {
    return _Data<T>(
      data,
    );
  }

  _Loading<T> loading<T>() {
    return _Loading<T>();
  }

  _ErrorDetails<T> error<T>(dynamic errors) {
    return _ErrorDetails<T>(
      errors,
    );
  }
}

/// @nodoc
const $NetworkState = _$NetworkStateTearOff();

/// @nodoc
mixin _$NetworkState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic errors) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T? data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic errors)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic errors)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T> value) $default, {
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_ErrorDetails<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkStateCopyWith<T, $Res> {
  factory $NetworkStateCopyWith(
          NetworkState<T> value, $Res Function(NetworkState<T>) then) =
      _$NetworkStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NetworkStateCopyWithImpl<T, $Res>
    implements $NetworkStateCopyWith<T, $Res> {
  _$NetworkStateCopyWithImpl(this._value, this._then);

  final NetworkState<T> _value;
  // ignore: unused_field
  final $Res Function(NetworkState<T>) _then;
}

/// @nodoc
abstract class _$DataCopyWith<T, $Res> {
  factory _$DataCopyWith(_Data<T> value, $Res Function(_Data<T>) then) =
      __$DataCopyWithImpl<T, $Res>;
  $Res call({T? data});
}

/// @nodoc
class __$DataCopyWithImpl<T, $Res> extends _$NetworkStateCopyWithImpl<T, $Res>
    implements _$DataCopyWith<T, $Res> {
  __$DataCopyWithImpl(_Data<T> _value, $Res Function(_Data<T>) _then)
      : super(_value, (v) => _then(v as _Data<T>));

  @override
  _Data<T> get _value => super._value as _Data<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Data<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_Data<T> implements _Data<T> {
  const _$_Data(this.data);

  @override
  final T? data;

  @override
  String toString() {
    return 'NetworkState<$T>(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<T, _Data<T>> get copyWith =>
      __$DataCopyWithImpl<T, _Data<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic errors) error,
  }) {
    return $default(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T? data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic errors)? error,
  }) {
    return $default?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic errors)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T> value) $default, {
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_ErrorDetails<T> value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Data<T> implements NetworkState<T> {
  const factory _Data(T? data) = _$_Data<T>;

  T? get data;
  @JsonKey(ignore: true)
  _$DataCopyWith<T, _Data<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<T, $Res>
    extends _$NetworkStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;
}

/// @nodoc

class _$_Loading<T> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'NetworkState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic errors) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T? data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic errors)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic errors)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T> value) $default, {
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_ErrorDetails<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements NetworkState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$ErrorDetailsCopyWith<T, $Res> {
  factory _$ErrorDetailsCopyWith(
          _ErrorDetails<T> value, $Res Function(_ErrorDetails<T>) then) =
      __$ErrorDetailsCopyWithImpl<T, $Res>;
  $Res call({dynamic errors});
}

/// @nodoc
class __$ErrorDetailsCopyWithImpl<T, $Res>
    extends _$NetworkStateCopyWithImpl<T, $Res>
    implements _$ErrorDetailsCopyWith<T, $Res> {
  __$ErrorDetailsCopyWithImpl(
      _ErrorDetails<T> _value, $Res Function(_ErrorDetails<T>) _then)
      : super(_value, (v) => _then(v as _ErrorDetails<T>));

  @override
  _ErrorDetails<T> get _value => super._value as _ErrorDetails<T>;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_ErrorDetails<T>(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ErrorDetails<T> implements _ErrorDetails<T> {
  const _$_ErrorDetails(this.errors);

  @override
  final dynamic errors;

  @override
  String toString() {
    return 'NetworkState<$T>.error(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorDetails<T> &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  _$ErrorDetailsCopyWith<T, _ErrorDetails<T>> get copyWith =>
      __$ErrorDetailsCopyWithImpl<T, _ErrorDetails<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic errors) error,
  }) {
    return error(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T? data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic errors)? error,
  }) {
    return error?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic errors)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T> value) $default, {
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_ErrorDetails<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorDetails<T> implements NetworkState<T> {
  const factory _ErrorDetails(dynamic errors) = _$_ErrorDetails<T>;

  dynamic get errors;
  @JsonKey(ignore: true)
  _$ErrorDetailsCopyWith<T, _ErrorDetails<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
