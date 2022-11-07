import 'package:flutter/material.dart';
import 'package:flutter_camera_practice/utils/routes.dart';

class LoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('CALORIES CALCULATED')),
    body: Center(

          child: Text("Product = Apple 100gms and 52 cals",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),

        //child: CircularProgressIndicator(),
      ),
    );
  }
}