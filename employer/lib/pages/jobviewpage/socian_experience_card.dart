import 'package:flutter/material.dart';

class SocianExperienceCard extends StatelessWidget {
  final List<String> experiences;

  const SocianExperienceCard({
    super.key,
    required this.experiences,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        // height: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: experiences
                .map((experience) => Text(
                      experience,
                      style: const TextStyle(color: Colors.purple, fontSize: 17),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
