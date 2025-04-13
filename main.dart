import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromWidth(double.infinity),
          child: AppBar(title: const Text('Full Width AppBar')),
        ),
        body: const Center(child: Text('Hello, World!')),
      ),
    );
  }
}
