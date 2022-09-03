import 'package:flutter/material.dart';
import 'package:on_borading_challenge/Data/data.dart';
import 'package:on_borading_challenge/UI/page_roller.dart';

class DownPart extends StatelessWidget {
  const DownPart({
    Key? key,
    required int currentOne,
  })  : _currentOne = currentOne,
        super(key: key);

  final int _currentOne;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color(0xFF1B1B1B),
                ),
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    data.length,
                    (index) => PageRoller(
                      index: index,
                      currentOne: _currentOne,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
