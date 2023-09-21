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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(height: 200, width: 200, color: Colors.black,),
            Container(height: 200, width: 200, color: Colors.blue,),
            Container(height: 200, width: 200, color: Colors.red,),
            Container(height: 200, width: 200, color: Colors.green,),
            Container(height: 200, width: 200, color: Colors.blueGrey,),
            Container(height: 200, width: 200, color: Colors.redAccent,),
            Container(height: 200, width: 200, color: Colors.grey,),
            Container(height: 200, width: 200, color: Colors.amber,),
            Container(height: 200, width: 200, color: Colors.black,),
            Container(height: 200, width: 200, color: Colors.blue,),
            Container(height: 200, width: 200, color: Colors.red,),
            Container(height: 200, width: 200, color: Colors.green,),
          ],
        ),
      ),
    );
  }
}
