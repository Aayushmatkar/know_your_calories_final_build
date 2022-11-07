import 'package:flutter/material.dart';
import 'package:flutter_camera_practice/LOGIN.dart';
import 'package:flutter_camera_practice/home_page.dart';
import 'package:flutter_camera_practice/loading.dart';
import 'package:flutter_camera_practice/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'SCAN YOUR CALAORIES',
      theme: ThemeData(primarySwatch: Colors.deepPurple),

      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loadRoute : (context) => LoadingView(),
      }
      //home: HomePage(),
    );
  }
}
