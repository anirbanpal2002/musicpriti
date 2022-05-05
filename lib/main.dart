//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:musicpriti/first.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'first',
    routes: {
      'first': (context) => MyFirst(),
    },
  ));
}
