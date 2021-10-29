import 'dart:async';
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
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("Splash Screen",style: TextStyle(color: Colors.white,fontSize: 24.0),),
      color: Colors.indigo,
      alignment: Alignment.center,
    );
  }

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds:5),
        ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder:
        (context) => const HomeScreen()
        )
        )
    );
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash Screen"),
      ),
      body: const Center(
        child: Text("Welcome to Splash Screen"),
      ),
    );
  }
}
