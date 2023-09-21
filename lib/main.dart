import 'package:flutter/material.dart';
import 'package:module_07_flutter_03/style.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Media Query", style: Headline(context),)
        ],
      ),
    );
  }
}



/// Media Query(video 1)

// var widht = MediaQuery.of(context).size.width;
// var height = MediaQuery.of(context).size.height;
// var orientation = MediaQuery.of(context).orientation;



// body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text("Width Screen = $widht"),
// Text("Height Screen = $height"),
// Text("Orientation Screen = $orientation"),
// ],
// ),
