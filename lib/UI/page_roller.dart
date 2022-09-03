import 'package:flutter/material.dart';

class PageRoller extends StatelessWidget {
  const PageRoller({
    Key? key,
    required this.index,
    required this.currentOne,
  }) : super(key: key);
  final int index;
  final int currentOne;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5.0),
      height: 8.0,
      width: currentOne == index ? 15 : 10,
      decoration: BoxDecoration(
        color: currentOne == index
            ? const Color(0xFF1B1B1B)
            : Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
