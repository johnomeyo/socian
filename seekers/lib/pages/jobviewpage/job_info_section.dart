// Widget for displaying job info like payment, time, distance
import 'package:flutter/material.dart';
import 'package:seekers/pages/jobviewpage/info_card.dart';
import 'package:seekers/pages/jobviewpage/job_icons_row.dart';

class JobInfoSection extends StatelessWidget {
  const JobInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Arriving in 4 mins',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('2 Km',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.w600)),
            ],
          ),
          SizedBox(height: 8),
          JobIconsRow(),
        ],
      ),
    );
  }
}
