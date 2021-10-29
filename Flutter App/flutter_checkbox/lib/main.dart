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
      home: const MyHomePage(title: 'Flutter CheckBox'),
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

  bool valueFirst = false;
  bool valueSecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 10,),
              const Text("Simple CheckBox: ", style: TextStyle(fontSize: 18.0),),
              Checkbox(
                  //checkColor: Colors.deepPurple,
                  activeColor: Colors.green,
                  value: valueFirst,
                  onChanged: (bool? value) {
                  setState(() {
                    valueFirst = value!;
                  });
                },
              ),
              Checkbox(
                value: valueSecond,
                onChanged: (bool? value) {
                  setState(() {
                    valueSecond = value!;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
