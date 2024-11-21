import 'package:flutter/material.dart';
import 'package:seekers/pages/job_listings_page.dart';

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
              // height: size.height * 0.22,
              height: 170,
              width: size.width * 0.4,
            ),
            Column(
              children: [
                JobCategoryCard(
                  title: '5+ Hour jobs',
                  color: Colors.deepPurple,
                  icon: Icons.timer_outlined,
                  width: size.width * 0.4,
                   height: 75,
                ),
                const SizedBox(
                  height: 20,
                ),
                JobCategoryCard(
                  title: 'Part Time',
                  color: Colors.purple,
                  icon: Icons.work_outline,
                  width: size.width * 0.4,
                  height: 75,
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
      onTap: () {
        title == 'Part Time'?
        showDialog(context: context, builder: (context){
return const AlertDialog(
  content:  SizedBox(
    height: 150,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        
        SizedBox(height: 10,),
        Icon(Icons.sentiment_satisfied_outlined, color: Colors.red, size: 50,),
        SizedBox(height: 20,),
        Text("COMING SOON!!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.purple),),

      ],
    ),
  ),
);
        })
         :
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => JobListPage(
                      title: title,
                    )));
      },
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
            Icon(icon, color: Colors.white, size: 25),
            const SizedBox(height: 5),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 11,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
