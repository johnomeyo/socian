
// Job description section with a read more button
import 'package:flutter/material.dart';
import 'package:seekers/pages/jobviewpage/info_card.dart';

class JobDescriptionSection extends StatelessWidget {
  const JobDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  InfoCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Job Description',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.',
            style: TextStyle(color: Colors.black54),
          ),
          const SizedBox(height: 8),
          FilledButton.tonal(
            onPressed: () {},
            child: const Text("Read more"),
          ),
        ],
      ),
    );
  }
}