import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_state.freezed.dart';

@freezed
class ImageState with _$ImageState {
  const factory ImageState({
    required double x,
    required double y,
    required double angle,
    required double scale,
  }) = _ImageState;
}
