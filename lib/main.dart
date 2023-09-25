import 'package:flutter/material.dart';
import 'package:module_07_flutter_03/style.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sum App",
      theme: ThemeData(
          primarySwatch: Colors.blue
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

  Map<String, String> FormValue = {"Num1":"", "Num2":"", "Num3":"",};
  double SUM = 0;

  @override
  Widget build(BuildContext context) {

    MyInputonchange(InputKey, InputValue){
      setState(() {
        FormValue.update(InputKey, (value) => InputValue);
      });
    }

    AddAllNumber(){
      setState(() {
        SUM = (FormValue["Num1"]!+FormValue["Num2"]!+FormValue["Num3"]!) as double;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Sum App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(SUM.toString(), style: Styletext(),),
            SizedBox(
              height: 20,
            ),
            TextFormField(onChanged: (value){
              MyInputonchange("Num1", value);
            }, decoration: Style("First Number"),),
            SizedBox(
              height: 20,
            ),
            TextFormField(onChanged: (value){
              MyInputonchange("Num2", value);
            }, decoration: Style("Second Number"),),
            SizedBox(
              height: 20,
            ),
            TextFormField(onChanged: (value){
              MyInputonchange("Num3", value);
            }, decoration: Style("Third Number"),),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  AddAllNumber();
                },
                  child: Text("Add"),style: Stylebutton(),
                )
            )
          ],
        ),
      ),
    );
  }
}