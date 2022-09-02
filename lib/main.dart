import 'package:flutter/material.dart';
import 'package:on_borading_challenge/Data/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'On Boarding App',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 15.0,
        ),
        child: Column(
          children: [
            const Text('Skip'),
            Image.asset('${data[0]['text1']}'),
            Text('${data[0]['image']}'),
            Image.asset('${data[0]['text2']}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xFF1B1B1B),
                  ),
                  child: const Text('Get Started'),
                ),
                Container(
                  height: 10.0,
                  width: 10.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF1B1B1B),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
