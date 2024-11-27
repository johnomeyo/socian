// Row with Java, Chat, and Safety icons
import 'package:flutter/material.dart';
import 'package:seekers/pages/jobviewpage/icon_with_text.dart';

class JobIconsRow extends StatelessWidget {
  const JobIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconWithText(
          imageUrl:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6u1XmcVGxbi2cpu4Hiy6EbiEkVvN-QnKafA&s",
          label: "Java",
        ),
        IconWithText(icon: Icons.chat_bubble, label: 'Chat'),
        IconWithText(icon: Icons.shield_outlined, label: 'Safety'),
      ],
    );
  }
}
