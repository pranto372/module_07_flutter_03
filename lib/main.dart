import 'package:flutter/material.dart';
import 'package:module_07_flutter_03/style.dart';
import 'package:responsive_grid/responsive_grid.dart';

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
      body: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 12, md: 6, lg: 2,
              child: Container(
                color: Colors.black,
                height: 100,
              )
          ),
          ResponsiveGridCol(
              sm: 12, md: 6, lg: 2,
              child: Container(
                color: Colors.blue,
                height: 100,
              )
          ),
          ResponsiveGridCol(
              sm: 12, md: 6, lg: 2,
              child: Container(
                color: Colors.red,
                height: 100,
              )
          ),
          ResponsiveGridCol(
              sm: 12, md: 6, lg: 2,
              child: Container(
                color: Colors.amber,
                height: 100,
              )
          ),
        ],
      ),
    );
  }
}
