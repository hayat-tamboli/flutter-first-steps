import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hello_world/pages/homepage.dart';


void main() {
  runApp(MaterialApp(
    title: "my App",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
  ));
}

