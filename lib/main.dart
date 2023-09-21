import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Container(color: Colors.amber,)
          ),
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(color: Colors.blue,)
          ),
          Flexible(
              fit: FlexFit.tight,
              flex: 3,
              child: Container(color: Colors.green,)
          ),
        ],
      ),
    );
  }
}
