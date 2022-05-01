import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NextPage extends StatelessWidget {
  //イニシャライザをかく
  // ignore: use_key_in_widget_constructors
  NextPage(this.name);
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tester ~> jennifer'),
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Text(name),
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
