import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyFlutterLists(),
    );
  }
}

class MyFlutterLists extends StatelessWidget{
  const MyFlutterLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter List"),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Profile Account"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.menu),
            title: Text("Menu"),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Contact Us"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          )
        ],
      ),
    );
  }

}




