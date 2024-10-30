// components/custom_text_field.dart
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: theme.textTheme.labelLarge?.copyWith(
              color: theme.primaryColor, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: TextField(
              controller: controller,
              obscureText: isPassword,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(12),
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: hintText,
                border: InputBorder.none,
                suffixIcon: isPassword ? const Icon(Icons.visibility, color: Colors.grey,) : null,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
