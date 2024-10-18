import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              _buildJobHeader(),
              const SizedBox(height: 5),
              _buildJobFooter(),
            ],
          ),
        ),
      ),
    );
  }

  // Widget for Job Header
  Widget _buildJobHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              "https://s3-alpha-sig.figma.com/img/e6a8/e58a/33b5ab9278017f8c6e6050f415bf8792?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cU6K2wsVf53bqDT4JV44OjQ-n3aBk2mhXB9Krld0uJGfjzRp2LZDIETjjVG7ls2swYXqXEAHH9Y5tJxlOOqGROhDRbl7G83hTflf9BATKR0nk2wAPLY5g6d31Pa9enYPnIum-TIg~tq3~9HDJXk9QzBK5aueBZLcga-6iJf0K9wqfw-q0jTHxQk4Ia2iI2FMkE6Gbcqo2rpD6NKSnrdOwj0Xnm5ULwZbZ5xXi-aRnMXIrYaYT-P5e9KDu32xnhHRrl1KFu0xC933GgcALiJqQUhbQKdgkfHEZW6-8YMf-FwKoV9tFcrcJoXM4FMWo1Cn9nK~deiy6uaVI5a86FFe4w__"),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Waiter',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[900],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_border,
                      color: Colors.grey,
                      size: 20,
                    ),
                  )
                ],
              ),
              const Text(
                'Java House. Nairobi, Kenya',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '12/05/2024, 08:00 AM - 03:00 PM',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Widget for Job Footer
  Widget _buildJobFooter() {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'ksh 200/Hr',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const FilledButton.tonal(
                onPressed: null, child: Text("posted: 5 minutes ago")),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.purple,
                backgroundColor: Colors.pink[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Get the Job'),
            ),
          ],
        )
      ],
    );
  }
}
