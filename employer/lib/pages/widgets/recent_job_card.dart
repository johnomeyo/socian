// Recent Job List Widget
import 'package:employer/pages/widgets/job_card.dart';
import 'package:flutter/material.dart';

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
