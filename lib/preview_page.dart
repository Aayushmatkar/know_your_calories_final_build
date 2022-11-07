import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter_camera_practice/utils/routes.dart';

class PreviewPage extends StatelessWidget {
  final int cals = 52;

  const PreviewPage({Key? key, required this.picture}) : super(key: key);
  final XFile picture;

 //class StartState extends State<PreviewPage>{
 //  @override
  //void initstate(){
    // super.initState();
   //  startTimer
  //}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CALORIE DETECTION')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.file(File(picture.path), fit: BoxFit.cover, width: 250),
          const SizedBox(height: 24),

          ElevatedButton(
              child: Text("Retrieve Calorie Calculations from Cloud"),
              style: TextButton.styleFrom(minimumSize: Size(150,40)),
              onPressed: (){
                Navigator.pushNamed(context, MyRoutes.loadRoute);
              }
          )

        ]),
      ),
    );
  }
}
