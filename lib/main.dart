import 'package:flutter/material.dart';
import 'package:random_flutter_app/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          Color.fromARGB(255, 86, 12, 214), Color.fromARGB(255, 148, 95, 240)),
    ),
  ));
}
