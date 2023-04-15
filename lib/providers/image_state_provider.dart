import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_gesture_sample/model/image_state.dart';

class ImageStateNotifier extends StateNotifier<ImageState> {
  ImageStateNotifier({required ImageState imageState}) : super(imageState);
}

final imageStateProvider =
    StateNotifierProvider<ImageStateNotifier, ImageState>((ref) {
  return ImageStateNotifier(
    imageState: ImageState(x: 0, y: 0, angle: 0, scale: 1),
  );
});
