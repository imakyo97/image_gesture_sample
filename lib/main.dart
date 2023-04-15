import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_gesture_sample/model/image_state.dart';
import 'package:image_gesture_sample/providers/image_state_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math_64.dart' as vector;
import 'package:flutter/material.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageScreen(),
    );
  }
}

class ImageScreen extends ConsumerWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ImageState imageState = ref.watch(imageStateProvider);

    return Scaffold(
      body: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()
          ..setFromTranslationRotationScale(
            vector.Vector3(imageState.x, imageState.y, 0), // x: 横移動, y: 縦移動
            vector.Quaternion.axisAngle(
                vector.Vector3(0, 0, 1), imageState.angle), // angle: 回転
            vector.Vector3.all(imageState.scale), // scale: 拡大・縮小
          ),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/city.jpg'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
