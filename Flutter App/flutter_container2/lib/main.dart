import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyContainerWidget(),
    );
  }
}

class MyContainerWidget extends StatelessWidget{
  const MyContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Container Example2"),
        ),
        body: Container(
          width: double.infinity,
          height: 150.0,
          color: Colors.green,
          margin: const EdgeInsets.all(25),
          padding: const EdgeInsets.all(35),
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(0.1),
          child: const Text("Hello!!! I am in container widget",style: TextStyle(fontSize: 25),),
        ),
      ),
    );
  }
}

