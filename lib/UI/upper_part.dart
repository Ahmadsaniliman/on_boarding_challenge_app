import 'package:flutter/material.dart';
import 'package:on_borading_challenge/Data/data.dart';

class UpperPart extends StatelessWidget {
  const UpperPart({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Align(
          alignment: Alignment.topRight,
          child: Text('Skip'),
        ),
        Image.asset(
          '${data[index]['image']}',
          height: 400,
          width: 300,
        ),
        const SizedBox(height: 10.0),
        Text(
          '${data[index]['text1']}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(height: 12.0),
        Text(
          '${data[index]['text2']}',
        ),
      ],
    );
  }
}
