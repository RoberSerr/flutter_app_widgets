import 'package:flutter/material.dart';

const colorList = <Color> [
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.brown,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    required this.selectedColor
  }): assert( selectedColor >= 0, 
        'Selected color must be greater than 0' ),
      assert( selectedColor <= colorList.length - 1, 
        'Selected color must be between 0 and ${ colorList.length - 1 }' );

  ThemeData getTheme() => ThemeData(

    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor ]

  );

}