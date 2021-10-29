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
      home: const MyHomePage(title: 'Flutter ToolTip'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Tooltip(
              message: 'Box Account',
              waitDuration: const Duration(seconds: 1),
              showDuration: const Duration(seconds: 5),
              padding: const EdgeInsets.all(5),
              height: 35,
              textStyle: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
              child: TextButton(onPressed: () {  },
                child: const Icon(
                  Icons.account_box,
                  size: 100,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Tooltip(
              message: "Circle Account",
              child: TextButton(onPressed: () {  },
                child: const Icon(
                  Icons.account_circle,
                  size: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
