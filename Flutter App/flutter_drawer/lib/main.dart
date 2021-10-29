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
      home: const MyDrawer(),
    );
  }
}

class MyDrawer extends StatelessWidget{
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Flutter Drawer"),
     ),
     body: const Center(
       child: Text("A drawer is invisible side screen",style: TextStyle(fontFamily: "Times New Roman",fontSize: 24.0),),
     ),
     drawer: Drawer(
       child: ListView(
         padding: const EdgeInsets.all(0.0),
         children: [
            const UserAccountsDrawerHeader(
               accountName: Text("Pradesh Gwachha"),
               accountEmail: Text("pradesh248@gmail.com"),
               currentAccountPicture:CircleAvatar(
               //backgroundColor: Colors.indigo,
                 child: Icon(Icons.account_circle),
                 // child: Text("P",style: TextStyle(fontSize: 40.0),),
           ),
           ),
           ListTile(
             leading: const Icon(Icons.home),title: const Text("Home"),
             onTap: (){
               Navigator.pop(context);
             },
           ),
           ListTile(
             leading: const Icon(Icons.settings),title: const Text("Settings"),
             onTap: (){
               Navigator.pop(context);
             },
           ),
           ListTile(
             leading: const Icon(Icons.contacts),title: const Text("Contact Us"),
             onTap: (){
               Navigator.pop(context);
             },
           ),
         ],
       ),
     ),
   );
  }
}
