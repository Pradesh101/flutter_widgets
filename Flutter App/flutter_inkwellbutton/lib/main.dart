import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _volume = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('InkWell Button Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                splashColor: Colors.green,
                highlightColor: Colors.blue,
                child: const Icon(Icons.ring_volume, size: 50,color: Colors.pink,),
                onTap: () {
                  setState(() {
                    _volume += 2;
                  });
                },
              ),
              Text (
                  _volume.toString(),
                  style: const TextStyle(fontSize: 50)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

