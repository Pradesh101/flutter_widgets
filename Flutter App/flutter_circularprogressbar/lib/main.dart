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
      home: CircularProgressIndicatorClass(),
    );
  }
}

class CircularProgressIndicatorClass extends StatefulWidget {
  const CircularProgressIndicatorClass({Key? key}) : super(key: key);

  @override
  _CircularProgressIndicatorClassState createState() => _CircularProgressIndicatorClassState();
}

class _CircularProgressIndicatorClassState extends State<CircularProgressIndicatorClass> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circular Progress Bar"),
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
          child: loading?const CircularProgressIndicator(
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