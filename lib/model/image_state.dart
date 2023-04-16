import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_state.freezed.dart';

@freezed
class ImageState with _$ImageState {
  const ImageState._();

  factory ImageState({
    required double x,
    required double y,
    required double angle,
    required double scale,
  }) = _ImageState;

  ImageState changePosition(double x, double y) {
    return copyWith(x: x, y: y);
  }

  ImageState changeAngle(double angle) {
    return copyWith(angle: angle);
  }

  ImageState changeScale(double scale) {
    return copyWith(scale: scale);
  }
}
