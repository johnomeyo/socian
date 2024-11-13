// Row with Java, Chat, and Safety icons
import 'package:employer/pages/jobviewpage/icon_with_text.dart';
import 'package:flutter/material.dart';

class JobIconsRow extends StatelessWidget {
  const JobIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconWithText(
          imageUrl:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6XsIYB87pwZstVtFwrJ3HK9nYiHvE0L0j2g&s",
          label: "Java",
        ),
        IconWithText(icon: Icons.directions_run, label: 'Fast'),
        IconWithText(icon: Icons.shield_outlined, label: 'Safety'),
      ],
    );
  }
}
