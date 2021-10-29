import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
        primarySwatch: Colors.indigo
      ),
      home: const MyFlutterToast()
    );
  }
}

class MyFlutterToast extends StatelessWidget{
  const MyFlutterToast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Toast"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Show Toast"),
          onPressed: () {
            showToast();
          },
        ),
      ),
    );
  }
}

void showToast(){
  Fluttertoast.showToast(
      msg: "This is toast message",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      backgroundColor: Colors.deepPurple,
      textColor: Colors.white,
  );
}


