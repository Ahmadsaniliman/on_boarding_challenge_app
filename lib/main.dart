import 'package:flutter/material.dart';
import 'package:on_borading_challenge/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'On Boarding App',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}
