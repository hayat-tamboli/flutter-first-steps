import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/cube.jpg",
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            myText,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              // keyboardType: TextInputType.number,
              // obscureText: true,
              controller: _nameController,
              decoration: InputDecoration(
                  hintText: "Jhon doe",
                  labelText: "Name",
                  border: OutlineInputBorder()),
            ))
      ],
    );
  }
}
