import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle Headline(context){
  var widht = MediaQuery.of(context).size.width;
  if(widht<700){
    // Mobile
    return TextStyle(
      color:Colors.red,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
  }
  else{
    // Desktop
    return TextStyle(
      color: Colors.green,
      fontSize: 60,
      fontWeight: FontWeight.bold
    );
  }
}