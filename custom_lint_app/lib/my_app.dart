import 'package:flutter/material.dart';

String? n;
String? name;

class MyApp extends StatelessWidget {
  final String t = "App Title";
  final String title = "App Title";

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(),
    );
  }
}
