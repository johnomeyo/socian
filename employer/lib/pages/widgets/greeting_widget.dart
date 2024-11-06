import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  final String name;

  const GreetingWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hello',
          style: TextStyle(
            fontSize: 17,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '$name.',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
