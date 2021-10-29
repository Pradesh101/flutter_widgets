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
      home: const MyHomePage(title: 'Flutter Table'),
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
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Table(
                defaultColumnWidth: const FixedColumnWidth(120),
                border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2
                ),
                children: [
                  TableRow(children: [
                    Column(children: const [Text("Brand",style: TextStyle(fontSize: 20.0),)],),
                    Column(children: const [Text("Mobile",style: TextStyle(fontSize: 20.0),)],),
                    Column(children: const [Text("Price",style: TextStyle(fontSize: 20.0),)],),
                  ]
                  ),
                  TableRow(children: [
                    Column(children: const [Text("iPhone")],),
                    Column(children: const [Text("iPhone 13 Pro Max")],),
                    Column(children: const [Text("USD: 1299")],),
                  ]),
                  TableRow(children: [
                    Column(children: const [Text("Samsung")],),
                    Column(children: const [Text("Samsung S21 Ultra")],),
                    Column(children: const [Text("USD: 1399")],),
                  ]),
                  TableRow(children: [
                    Column(children: const [Text("OnePlus")],),
                    Column(children: const [Text("OnePlus 9 Pro")],),
                    Column(children: const [Text("USD: 1099")],),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
