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
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Flutter Card Example')
        ),
        backgroundColor: Colors.red,
        body: const MyCardWidget(),
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget{
  const MyCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        padding: const EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.orangeAccent,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: Icon(Icons.album, size: 60),
                title: Text('EMINEM', style: TextStyle(fontSize: 30.0)),
                subtitle: Text('Best of Eminem Music.', style: TextStyle(fontSize: 18.0)),
              ),
              ButtonBar(
                children: [
                  ElevatedButton(
                    child: const Text("Play"),
                    onPressed:() { },
                  ),
                  ElevatedButton(
                    child: const Text("Pause"),
                    onPressed:() { },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
