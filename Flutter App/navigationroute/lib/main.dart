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
        primarySwatch: Colors.green,
      ),
      home: const FirstRoute()
    );
  }
}

class FirstRoute extends StatelessWidget{
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation and Route"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Route 2"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondRoute()),);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            elevation: 5,
            shadowColor: Colors.green
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget{
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Route 1"),
          onPressed: (){
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.blueAccent,
              elevation: 5,
              shadowColor: Colors.redAccent,
          ),
        ),
      ),
    );
  }

}
