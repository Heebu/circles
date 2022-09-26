import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraCamera(
          enableAudio: true,
          enableZoom: true,
          onFile: (file) {
            return print(file);
          }),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (_) => CameraCamera(
      //           onFile: (file) {
      //             // photos.add(file);
      //           },
      //         ),
      //       ),
      //     );
      //   },
      //   child: const Icon(Icons.camera_alt),
      // ),
    );
  }
}
