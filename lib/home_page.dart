import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera_practice/camera_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Know Your Calories ")),
      body: SafeArea(
        child: Center(
            child: ElevatedButton(
              style: TextButton.styleFrom(minimumSize: Size(180,60)),
              onPressed: () async {
                await availableCameras().then((value) => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => CameraPage(cameras: value))));
              },
              child: const Text("Scan Your Food "),
            )),
      ),
    );
  }
}