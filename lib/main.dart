import 'LightCalculator.dart';
import 'package:calculator/DarkCalculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'Light mode',
    routes: {
      'Light mode': (context) => LightCalculator(),
      'Dark mode': (context) => DarkCalculator()
    },
  ));
}
