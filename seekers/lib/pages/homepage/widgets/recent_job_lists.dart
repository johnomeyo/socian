// Recent Job List Widget
import 'package:flutter/material.dart';
import 'package:seekers/pages/homepage/widgets/job_card.dart';

class RecentJobList extends StatelessWidget {
  const RecentJobList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Job List',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        JobCard(),
        JobCard(),
        JobCard(),
      ],
    );
  }
}
