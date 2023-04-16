import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_gesture_sample/model/image_state.dart';

class ImageStateNotifier extends StateNotifier<ImageState> {
  ImageStateNotifier({required ImageState imageState}) : super(imageState);

  /// 前操作の終了時の角度
  double scaleEndAngle = 0;

  changePosition(Offset offset) {
    state = state.changePosition(state.x + offset.dx, state.y + offset.dy);
  }

  changeAngle(double angle) {
    state = state.changeAngle(scaleEndAngle + angle);
  }

  changeScale(double scale) {
    state = state.changeScale(scale);
  }
}

final imageStateProvider =
    StateNotifierProvider<ImageStateNotifier, ImageState>((ref) {
  return ImageStateNotifier(
    imageState: ImageState(x: 0, y: 0, angle: 0, scale: 1),
  );
});
