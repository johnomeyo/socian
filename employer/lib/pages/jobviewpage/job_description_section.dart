// Job description section with a read more button
import 'package:employer/pages/jobviewpage/info_card.dart';
import 'package:flutter/material.dart';

class JobDescriptionSection extends StatelessWidget {
  const JobDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.cake_outlined, color: Colors.purple),
              SizedBox(
                width: 10,
              ),
              Text(
                'Job Description',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ],
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
