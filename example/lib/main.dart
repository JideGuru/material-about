import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:material_about/material_about.dart';
import 'package:material_about_example/ui/light.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var title = "Material About";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "$title",
      debugShowCheckedModeBanner: false,
      home: Light(),

      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}