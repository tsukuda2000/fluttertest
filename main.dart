
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:my/next_page.dart';

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
      home: const MyHomePage(title: 'test'),
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
        title: const Text("Test Pages"),
      ),

      body: Center(
        child: Column(
          // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
          children: [
            const Text("次のページに行くには",
            style: TextStyle(fontSize: 30,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline)),
            const Text("下記をクリック",
            style: TextStyle(fontSize:30,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline)),
            RaisedButton(
              // ignore: prefer_const_constructors
              child: Text("NEXT PAGES"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage("hello world😇"))
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
