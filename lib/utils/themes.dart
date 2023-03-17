import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    secondaryHeaderColor: Colors.white,
    hintColor: Colors.black,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      displayMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white,
      ),
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    hintColor: Colors.white,
    secondaryHeaderColor: Colors.black12,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      displayMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    ),
    scaffoldBackgroundColor: const Color(-13420743),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Color(-13420743)),
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Color(-13420743),
      elevation: 0,
    ),
  );
}
