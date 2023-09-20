import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        height: 200,
        width: double.infinity,
        color: Colors.red,
          alignment: Alignment.center,
          child: AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              color: Colors.black,
            ),
        ),
      ),
    );
  }
}
