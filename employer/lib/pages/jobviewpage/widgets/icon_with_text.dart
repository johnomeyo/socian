import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final IconData? icon;
  final String? imageUrl;
  final String label;

  const IconWithText({
    super.key,
    this.icon,
    this.imageUrl,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[300],
          backgroundImage: imageUrl != null ? NetworkImage(imageUrl!) : null,
          child: icon != null
              ? Icon(icon, color: Colors.black, size: 24)
              : null,
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.black54)),
      ],
    );
  }
}
