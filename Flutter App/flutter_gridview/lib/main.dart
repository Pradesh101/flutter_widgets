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
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView"),
        ),
        body: GridView.count(
            crossAxisCount: 3,
          children:
            List.generate(30, (index){
              return Center(
                child: Text("Item: $index",style: Theme.of(context).textTheme.headline5,),
              );
            }
            ),
        ),
      ),
    );
  }
}

