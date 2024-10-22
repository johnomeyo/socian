// Reusable JobDetailRow Widget
import 'package:flutter/material.dart';

class JobDetailRow extends StatelessWidget {
  final String label;
  final String value;

  const JobDetailRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontSize: 17)),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}