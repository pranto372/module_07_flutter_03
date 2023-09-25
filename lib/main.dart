import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.amber
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeScreenUi();
  }
}

class HomeScreenUi extends State<HomeScreen>{

  int CountNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Count:", style: TextStyle(fontSize: 26),),
            Text(CountNumber.toString(),style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      CountNumber = CountNumber + 1;
                      if(CountNumber >= 5){
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(
                                  "Button Pressed $CountNumber time"
                              ),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: Text("Close"))
                              ],
                            )
                        );
                      }
                    });
                  }, child: Icon(Icons.add)),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      CountNumber = CountNumber - 1;
                    });
                  }, child: Icon(Icons.remove)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}