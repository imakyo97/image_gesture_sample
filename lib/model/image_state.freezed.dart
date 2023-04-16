// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageState {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get angle => throw _privateConstructorUsedError;
  double get scale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageStateCopyWith<ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res, ImageState>;
  @useResult
  $Res call({double x, double y, double angle, double scale});
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res, $Val extends ImageState>
    implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? angle = null,
    Object? scale = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageStateCopyWith<$Res>
    implements $ImageStateCopyWith<$Res> {
  factory _$$_ImageStateCopyWith(
          _$_ImageState value, $Res Function(_$_ImageState) then) =
      __$$_ImageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y, double angle, double scale});
}

/// @nodoc
class __$$_ImageStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$_ImageState>
    implements _$$_ImageStateCopyWith<$Res> {
  __$$_ImageStateCopyWithImpl(
      _$_ImageState _value, $Res Function(_$_ImageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? angle = null,
    Object? scale = null,
  }) {
    return _then(_$_ImageState(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ImageState implements _ImageState {
  const _$_ImageState(
      {required this.x,
      required this.y,
      required this.angle,
      required this.scale});

  @override
  final double x;
  @override
  final double y;
  @override
  final double angle;
  @override
  final double scale;

  @override
  String toString() {
    return 'ImageState(x: $x, y: $y, angle: $angle, scale: $scale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageState &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.angle, angle) || other.angle == angle) &&
            (identical(other.scale, scale) || other.scale == scale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, y, angle, scale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageStateCopyWith<_$_ImageState> get copyWith =>
      __$$_ImageStateCopyWithImpl<_$_ImageState>(this, _$identity);
}

abstract class _ImageState implements ImageState {
  const factory _ImageState(
      {required final double x,
      required final double y,
      required final double angle,
      required final double scale}) = _$_ImageState;

  @override
  double get x;
  @override
  double get y;
  @override
  double get angle;
  @override
  double get scale;
  @override
  @JsonKey(ignore: true)
  _$$_ImageStateCopyWith<_$_ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
