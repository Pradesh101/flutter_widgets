import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dropdownValue="Kotlin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropDown Button"),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 24,
          //elevation: 5,
          style: const TextStyle(color: Colors.deepPurple,fontSize: 24),
          underline: const SizedBox.shrink(),
          onChanged: (String? newValue){
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String> ["Kotlin","Swift","Flutter","React-native"].map<DropdownMenuItem<String>>((String value){
            return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }

}