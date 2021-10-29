import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LinearProgressIndicatorClass(),
    );
  }
}

class LinearProgressIndicatorClass extends StatefulWidget {
  const LinearProgressIndicatorClass({Key? key}) : super(key: key);

  @override
  _LinearProgressIndicatorClassState createState() => _LinearProgressIndicatorClassState();
}

class _LinearProgressIndicatorClassState extends State<LinearProgressIndicatorClass> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linear Progress Bar"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
            Icons.arrow_forward_ios_rounded
        ),
        onPressed: (){
          setState(() {
            loading = !loading;
          });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:38),
        child: Center(
          child: loading?const LinearProgressIndicator(
            backgroundColor: Colors.red,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ):const Text(
            "No task to do",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
      ),
    );
  }
}