// 29 sept   use of image in flutter  // practice this ui 1/ about page

import "package:flutter/material.dart";
import 'package:flutter_ws/5_oct.dart';
import 'package:flutter_ws/about.dart';
import 'package:flutter_ws/mr_tip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      title: "title",
      home: oct5(),
    ));
  }
}