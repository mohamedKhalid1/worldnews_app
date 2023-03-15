import 'package:flutter/material.dart';

class Constants {
  static const color1 = Colors.blue;
  static const color2 = Colors.green;
  static const styleTitle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const styleSubTitle = TextStyle(fontSize: 18);

  static getSnackBar(context, String title, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(title),
      backgroundColor: color,
    ));
  }

  static List<String> categories = [
    "business",
    "entertainment",
    "general",
    "health",
    "science",
    "sports",
    "technology"
  ];
}
