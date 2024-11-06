import 'package:flutter/material.dart';

// Job Categories Widget
class JobCategories extends StatelessWidget {
  const JobCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Find Your Job',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            JobCategoryCard(
              title: '1-5 Hour jobs',
              color: Colors.purpleAccent,
              icon: Icons.timer,
              height: size.height * 0.22,
              width: size.width * 0.4,
            ),
            Column(
              children: [
                JobCategoryCard(
                  title: '5+ Hour jobs',
                  color: Colors.deepPurple,
                  icon: Icons.timer_outlined,
                  width: size.width * 0.4,
                ),
                const SizedBox(
                  height: 20,
                ),
                JobCategoryCard(
                  title: 'Part Time',
                  color: Colors.purple,
                  icon: Icons.work_outline,
                  width: size.width * 0.4,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

// Job Category Card Widget
class JobCategoryCard extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;
  final double? height;
  final double? width;

  const JobCategoryCard({
    super.key,
    required this.title,
    required this.color,
    required this.icon,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //           builder: (context) => JobListPage(
      //                 title: title,
      //               )));
      // },
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 28),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
