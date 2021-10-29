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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyGridView(),
    );
  }
}

class MyGridView extends StatelessWidget{
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Gridview.extent"),
      ),
      body: Center(
        child: GridView.extent(
          primary: false,
          padding: const EdgeInsets.all(16.0),
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          maxCrossAxisExtent: 200.0,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text("First",style: TextStyle(fontSize: 24.0),),
              color: Colors.deepPurpleAccent,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Second",style: TextStyle(fontSize: 24.0),),
              color: Colors.green,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Three",style: TextStyle(fontSize: 24.0),),
              color: Colors.deepOrange,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Four",style: TextStyle(fontSize: 24.0),),
              color: Colors.pink,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Five",style: TextStyle(fontSize: 24.0),),
              color: Colors.blueAccent,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Six",style: TextStyle(fontSize: 24.0),),
              color: Colors.teal,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Seven",style: TextStyle(fontSize: 24.0),),
              color: Colors.indigo,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Eight",style: TextStyle(fontSize: 24.0),),
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }

}