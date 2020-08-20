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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.cyan[200],
                  width: 50,
                  height: 100,
                  padding: const EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.cyan[400],
                  width: 50,
                  height: 100,
                  padding: const EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.cyan[600],
                  width: 50,
                  height: 100,
                  padding: const EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.cyan[800],
                  width: 50,
                  height: 100,
                  padding: const EdgeInsets.all(20),
                )
              ],
            ),
          ),
        ));
  }
}
