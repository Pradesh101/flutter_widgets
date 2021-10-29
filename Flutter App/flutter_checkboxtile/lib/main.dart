import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp( home: MyHomePage(),));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  bool valueFirst = false;
  bool valueSecond = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Checkbox Example'),),
        body: Container(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              children: <Widget>[
                const SizedBox(width: 10,),
                const Text('Checkbox with Header and Subtitle',style: TextStyle(fontSize: 20.0), ),
                CheckboxListTile(
                  secondary: const Icon(Icons.alarm),
                  title: const Text('Ringing at 4:30 AM every day'),
                  subtitle: const Text('Ringing after 12 hours'),
                  value: valueFirst,
                  onChanged: (bool? value) {
                    setState(() {
                      valueFirst = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: const Icon(Icons.alarm),
                  title: const Text('Ringing at 5:00 AM every day'),
                  subtitle: const Text('Ringing after 12 hours'),
                  value: valueSecond,
                  onChanged: (bool? value) {
                    setState(() {
                      valueSecond = value!;
                    });
                  },
                ),
              ],
            )
        ),
      ),
    );
  }
}

