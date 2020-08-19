import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: "my App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Center(
            child: Container(
          // color: Colors.cyan,
          width: 200,
          height: 100,
          padding: const EdgeInsets.all(20),
          alignment: Alignment.bottomCenter,
          child: Text(
            "hello there I am Hayat",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.lightGreen,
              gradient:
                  LinearGradient(colors: [Colors.red, Colors.lightBlue[900]]),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[350],
                  blurRadius: 10,
                  offset: Offset(5, 5),
                )
              ]),
        )));
  }
}
