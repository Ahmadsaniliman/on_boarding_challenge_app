import 'package:flutter/material.dart';
import 'package:on_borading_challenge/Data/data.dart';
import 'package:on_borading_challenge/UI/down_part.dart';
import 'package:on_borading_challenge/UI/upper_part.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentOne = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 40.0,
          horizontal: 25.0,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    _currentOne = value;
                  });
                },
                itemCount: data.length,
                itemBuilder: (context, index) => UpperPart(index: index),
              ),
            ),
            DownPart(currentOne: _currentOne),
          ],
        ),
      ),
    );
  }
}
