// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reel _$ReelFromJson(Map<String, dynamic> json) {
  return _Reel.fromJson(json);
}

/// @nodoc
class _$ReelTearOff {
  const _$ReelTearOff();

  _Reel call(
      {String? description,
      String? sources,
      String? subtitle,
      String? thumb,
      String? title,
      bool isLike = false}) {
    return _Reel(
      description: description,
      sources: sources,
      subtitle: subtitle,
      thumb: thumb,
      title: title,
      isLike: isLike,
    );
  }

  Reel fromJson(Map<String, Object?> json) {
    return Reel.fromJson(json);
  }
}

/// @nodoc
const $Reel = _$ReelTearOff();

/// @nodoc
mixin _$Reel {
  String? get description => throw _privateConstructorUsedError;
  String? get sources => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get thumb => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool get isLike => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReelCopyWith<Reel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelCopyWith<$Res> {
  factory $ReelCopyWith(Reel value, $Res Function(Reel) then) =
      _$ReelCopyWithImpl<$Res>;
  $Res call(
      {String? description,
      String? sources,
      String? subtitle,
      String? thumb,
      String? title,
      bool isLike});
}

/// @nodoc
class _$ReelCopyWithImpl<$Res> implements $ReelCopyWith<$Res> {
  _$ReelCopyWithImpl(this._value, this._then);

  final Reel _value;
  // ignore: unused_field
  final $Res Function(Reel) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? sources = freezed,
    Object? subtitle = freezed,
    Object? thumb = freezed,
    Object? title = freezed,
    Object? isLike = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sources: sources == freezed
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ReelCopyWith<$Res> implements $ReelCopyWith<$Res> {
  factory _$ReelCopyWith(_Reel value, $Res Function(_Reel) then) =
      __$ReelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? description,
      String? sources,
      String? subtitle,
      String? thumb,
      String? title,
      bool isLike});
}

/// @nodoc
class __$ReelCopyWithImpl<$Res> extends _$ReelCopyWithImpl<$Res>
    implements _$ReelCopyWith<$Res> {
  __$ReelCopyWithImpl(_Reel _value, $Res Function(_Reel) _then)
      : super(_value, (v) => _then(v as _Reel));

  @override
  _Reel get _value => super._value as _Reel;

  @override
  $Res call({
    Object? description = freezed,
    Object? sources = freezed,
    Object? subtitle = freezed,
    Object? thumb = freezed,
    Object? title = freezed,
    Object? isLike = freezed,
  }) {
    return _then(_Reel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sources: sources == freezed
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reel implements _Reel {
  const _$_Reel(
      {this.description,
      this.sources,
      this.subtitle,
      this.thumb,
      this.title,
      this.isLike = false});

  factory _$_Reel.fromJson(Map<String, dynamic> json) => _$$_ReelFromJson(json);

  @override
  final String? description;
  @override
  final String? sources;
  @override
  final String? subtitle;
  @override
  final String? thumb;
  @override
  final String? title;
  @JsonKey()
  @override
  final bool isLike;

  @override
  String toString() {
    return 'Reel(description: $description, sources: $sources, subtitle: $subtitle, thumb: $thumb, title: $title, isLike: $isLike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reel &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.sources, sources) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.thumb, thumb) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.isLike, isLike));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(sources),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(thumb),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(isLike));

  @JsonKey(ignore: true)
  @override
  _$ReelCopyWith<_Reel> get copyWith =>
      __$ReelCopyWithImpl<_Reel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReelToJson(this);
  }
}

abstract class _Reel implements Reel {
  const factory _Reel(
      {String? description,
      String? sources,
      String? subtitle,
      String? thumb,
      String? title,
      bool isLike}) = _$_Reel;

  factory _Reel.fromJson(Map<String, dynamic> json) = _$_Reel.fromJson;

  @override
  String? get description;
  @override
  String? get sources;
  @override
  String? get subtitle;
  @override
  String? get thumb;
  @override
  String? get title;
  @override
  bool get isLike;
  @override
  @JsonKey(ignore: true)
  _$ReelCopyWith<_Reel> get copyWith => throw _privateConstructorUsedError;
}
