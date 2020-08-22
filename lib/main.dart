import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: "my App",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Rubick's Cube";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
                child: Column(
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
            )),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            // DrawerHeader(
            //     child: Text("Headspace",
            //         style: TextStyle(
            //           fontSize: 24,
            //         )),
            //     decoration: BoxDecoration(
            //         color: Colors.deepOrangeAccent[100],
            //         borderRadius: BorderRadius.only(
            //             bottomRight: Radius.circular(10),
            //             bottomLeft: Radius.circular(10)))),
            UserAccountsDrawerHeader(
              accountName: Text("Hayat"),
              accountEmail: Text("hayat.tamboli@gmail.com"),
              // currentAccountPicture: Image.network(
              //     "https://assets.codepen.io/3996536/internal/avatars/users/default.png?format=auto&height=512&version=1578931840&width=512"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://assets.codepen.io/3996536/internal/avatars/users/default.png?format=auto&height=512&version=1578931840&width=512"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Hayat"),
              subtitle: Text("your account"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.add_circle),
              title: Text("Add"),
              subtitle: Text("Add your post"),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {
            
          });
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
