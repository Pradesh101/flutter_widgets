import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: const Text("Floating Button"),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(onPressed: ()=> {}, icon: const Icon(Icons.camera_alt)),
          IconButton(onPressed: ()=> {}, icon: const Icon(Icons.account_circle)),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.wifi),
      //   backgroundColor: Colors.green,
      //   foregroundColor: Colors.white,
      // ),
      //   floatingActionButtonLocation: FloatingActionButtonLocation.endFloat

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.save),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        label: const Text("Save"),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.startFloat
    )
    );
  }
  
}
