import 'package:flutter/material.dart';

class Constants{

  static const color1 = Colors.red;
  static const color2=Colors.blue;
  static const styleTitle=TextStyle(fontSize: 20,fontWeight: FontWeight.bold);
  static const styleSubTitle=TextStyle(fontSize: 18);
  static getSnackBar(context, String title, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(title),
      backgroundColor: color,
    ));
  }

}