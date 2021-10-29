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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter TextField AlertDialog'),
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

  final TextEditingController _textFieldController = TextEditingController();

  _displayDialog(BuildContext context) async {
    return showDialog(context: context, builder: (context) {
          return AlertDialog(
            title: const Text('TextField AlertDialog'),
            content: TextField(
              controller: _textFieldController,
              decoration: const InputDecoration(hintText: "TextField in Dialog"),
            ),
            actions: <Widget>[
               TextButton(
                child: const Text('SUBMIT'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Alert',style: TextStyle(fontSize: 20),),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(16.0),
            primary: Colors.green,
            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          onPressed: () => _displayDialog(context),
        ),
      ),
    );
  }
}
