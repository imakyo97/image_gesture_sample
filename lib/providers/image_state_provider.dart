import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_gesture_sample/model/image_state.dart';

class ImageStateNotifier extends StateNotifier<ImageState> {
  ImageStateNotifier({required ImageState imageState}) : super(imageState);

  /// 前操作の終了時の角度
  double scaleEndAngle = 0;

  /// 前操作の終了時のスケール
  double scaleEndScale = 1;

  didScaleUpdate({required ScaleUpdateDetails details}) {
    if (details.pointerCount == 2) {
      state = state.copyWith(
        x: state.x + details.focalPointDelta.dx,
        y: state.y + details.focalPointDelta.dy,
        angle: scaleEndAngle + details.rotation,
        scale: scaleEndScale * details.scale,
      );
    } else {
      state = state.copyWith(
        x: state.x + details.focalPointDelta.dx,
        y: state.y + details.focalPointDelta.dy,
      );
    }
  }

  didScaleEnd({required ScaleEndDetails details}) {
    if (details.pointerCount == 2) {
      scaleEndAngle = state.angle;
      scaleEndScale = state.scale;
    }
  }
}

final imageStateProvider =
    StateNotifierProvider<ImageStateNotifier, ImageState>((ref) {
  return ImageStateNotifier(
    imageState: const ImageState(x: 0, y: 0, angle: 0, scale: 1),
  );
});
