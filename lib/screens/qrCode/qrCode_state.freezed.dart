// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'qrCode_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QrCodeStateTearOff {
  const _$QrCodeStateTearOff();

  _QrCodeState call({String? dataString, String? displayName, String? email}) {
    return _QrCodeState(
      dataString: dataString,
      displayName: displayName,
      email: email,
    );
  }
}

/// @nodoc
const $QrCodeState = _$QrCodeStateTearOff();

/// @nodoc
mixin _$QrCodeState {
  String? get dataString => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QrCodeStateCopyWith<QrCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeStateCopyWith<$Res> {
  factory $QrCodeStateCopyWith(
          QrCodeState value, $Res Function(QrCodeState) then) =
      _$QrCodeStateCopyWithImpl<$Res>;
  $Res call({String? dataString, String? displayName, String? email});
}

/// @nodoc
class _$QrCodeStateCopyWithImpl<$Res> implements $QrCodeStateCopyWith<$Res> {
  _$QrCodeStateCopyWithImpl(this._value, this._then);

  final QrCodeState _value;
  // ignore: unused_field
  final $Res Function(QrCodeState) _then;

  @override
  $Res call({
    Object? dataString = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      dataString: dataString == freezed
          ? _value.dataString
          : dataString // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$QrCodeStateCopyWith<$Res>
    implements $QrCodeStateCopyWith<$Res> {
  factory _$QrCodeStateCopyWith(
          _QrCodeState value, $Res Function(_QrCodeState) then) =
      __$QrCodeStateCopyWithImpl<$Res>;
  @override
  $Res call({String? dataString, String? displayName, String? email});
}

/// @nodoc
class __$QrCodeStateCopyWithImpl<$Res> extends _$QrCodeStateCopyWithImpl<$Res>
    implements _$QrCodeStateCopyWith<$Res> {
  __$QrCodeStateCopyWithImpl(
      _QrCodeState _value, $Res Function(_QrCodeState) _then)
      : super(_value, (v) => _then(v as _QrCodeState));

  @override
  _QrCodeState get _value => super._value as _QrCodeState;

  @override
  $Res call({
    Object? dataString = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
  }) {
    return _then(_QrCodeState(
      dataString: dataString == freezed
          ? _value.dataString
          : dataString // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_QrCodeState implements _QrCodeState {
  _$_QrCodeState({this.dataString, this.displayName, this.email});

  @override
  final String? dataString;
  @override
  final String? displayName;
  @override
  final String? email;

  @override
  String toString() {
    return 'QrCodeState(dataString: $dataString, displayName: $displayName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QrCodeState &&
            const DeepCollectionEquality()
                .equals(other.dataString, dataString) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dataString),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$QrCodeStateCopyWith<_QrCodeState> get copyWith =>
      __$QrCodeStateCopyWithImpl<_QrCodeState>(this, _$identity);
}

abstract class _QrCodeState implements QrCodeState {
  factory _QrCodeState(
      {String? dataString,
      String? displayName,
      String? email}) = _$_QrCodeState;

  @override
  String? get dataString;
  @override
  String? get displayName;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$QrCodeStateCopyWith<_QrCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
