import 'package:flutter/material.dart';
import 'package:seekers/pages/job_details_page.dart';

class JobListPage extends StatelessWidget {
  final String title;
  const JobListPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMapHeader(),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
            _buildJobList(),
          ],
        ),
      ),
    );
  }

  // Widget to display a header with a simulated map image
  Widget _buildMapHeader() {
    return Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://lh3.googleusercontent.com/gYE0KowUZ6rICF8vtgJTWAGv3tr6Nnxh4aaWDLVgQPU0gtU7xGwp0VYT9oDmrAInBRJODEV0SAXWMEboQ1vtsl7OzoF8XPeVmFfVQtk=w450'),
        ),
      ),
    );
  }

  // Job list builder
  Widget _buildJobList() {
    final jobItems = [
      JobItem(
        title: 'Waiter',
        company: 'Java House',
        hours: '5 Hours',
        posted: '3 mins ago',
        time: 'Fri 08:00 AM - 03:00 PM',
        rate: 'KSH 150/H',
        estPay: 'EST: KSH 750',
        imageUrl:
            'https://images.unsplash.com/photo-1529290130-4ca3753253ae?q=80&w=1776&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Placeholder for job image
      ),
      
      JobItem(
        title: 'Waiter',
        company: 'KFC',
        hours: '5 Hours',
        posted: '3 mins ago',
        time: 'Fri 08:00 AM - 03:00 PM',
        rate: 'KSH 150/H',
        estPay: 'EST: KSH 750',
        imageUrl:
            'https://images.unsplash.com/photo-1549294413-26f195200c16?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Placeholder for job image
      ),
      JobItem(
        title: 'Chef',
        company: 'Julie Musk',
        hours: '6 Hours',
        posted: 'Now',
        time: 'Fri 10:00 PM - 07:00 PM',
        rate: 'KSH 250/H',
        estPay: 'EST: KSH 1500',
        imageUrl:
            'https://images.unsplash.com/photo-1517840901100-8179e982acb7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Placeholder for job image
      ),
      JobItem(
        title: 'Waiter',
        company: 'Java House',
        hours: '5 Hours',
        posted: '3 mins ago',
        time: 'Fri 08:00 AM - 03:00 PM',
        rate: 'KSH 150/H',
        estPay: 'EST: KSH 750',
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1715183752277-73dafdd74bd7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Placeholder for job image
      ),
    ];

    return ListView.builder(
      physics:
          const NeverScrollableScrollPhysics(), // To avoid conflicts with parent scroll
      shrinkWrap: true, // Makes the ListView fit the content size
      itemCount: jobItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const JobDetailsPage())),
            child: JobCard(job: jobItems[index]));
      },
    );
  }
}

// Job item model
class JobItem {
  final String title;
  final String company;
  final String hours;
  final String posted;
  final String time;
  final String rate;
  final String estPay;
  final String imageUrl;

  JobItem({
    required this.title,
    required this.company,
    required this.hours,
    required this.posted,
    required this.time,
    required this.rate,
    required this.estPay,
    required this.imageUrl,
  });
}

// Job card widget
class JobCard extends StatelessWidget {
  final JobItem job;

  const JobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            // Job logo or icon
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(job.imageUrl),
            ),
            const SizedBox(width: 12),
            // Job details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    job.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    job.company,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    job.hours,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        size: 16,
                        color: Colors.black54,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        job.time,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Posted: ${job.posted}',
                    style: const TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            ),
            // Rate and estimated pay
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  job.rate,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  job.estPay,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
