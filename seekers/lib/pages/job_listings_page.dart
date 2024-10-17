import 'package:flutter/material.dart';
import 'package:seekers/pages/job_details_page.dart';

class JobListPage extends StatelessWidget {
  const JobListPage({super.key});

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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                '5+ Hour Jobs',
                style: TextStyle(
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
            'https://s3-alpha-sig.figma.com/img/e6a8/e58a/33b5ab9278017f8c6e6050f415bf8792?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cU6K2wsVf53bqDT4JV44OjQ-n3aBk2mhXB9Krld0uJGfjzRp2LZDIETjjVG7ls2swYXqXEAHH9Y5tJxlOOqGROhDRbl7G83hTflf9BATKR0nk2wAPLY5g6d31Pa9enYPnIum-TIg~tq3~9HDJXk9QzBK5aueBZLcga-6iJf0K9wqfw-q0jTHxQk4Ia2iI2FMkE6Gbcqo2rpD6NKSnrdOwj0Xnm5ULwZbZ5xXi-aRnMXIrYaYT-P5e9KDu32xnhHRrl1KFu0xC933GgcALiJqQUhbQKdgkfHEZW6-8YMf-FwKoV9tFcrcJoXM4FMWo1Cn9nK~deiy6uaVI5a86FFe4w__', // Placeholder for job image
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
            'https://s3-alpha-sig.figma.com/img/ac88/0b72/4d5e3e82b86a7fc2fc3ef510e045b3f4?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ITFasHMOmEOW2gGeDXD3XC27uz~150BVaTIW0uZA4lekoWu0oTjBj0SWPFlBhr7zkm4MJBVb9R2pUk5b2aNRRrngUCainuragjbFTNeaH2bmUQroTey1YREVMmlXn0~oAtjruWFL-hsyJZFdWqVnQ8yN7hxKk9sm9c5mcnvgKgRo-0DPUtFtdIECbbyVP9P1vWN1XmsIpLcK0bmiK0~FJiFHng3FFNhdgRSeWcq-IMES3cg4AUzDVDUw4Aru7vONALBsF5XHb9rQqdu99HZ-nSi8PzNz7eLKMIS6e24aOxhXmc-Nz9s2FIRDOwN49nZ7UpqGgSteRiCGogXkC7wQtg__', // Placeholder for job image
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
            'https://s3-alpha-sig.figma.com/img/a07f/61d3/6753414d7695323fe92a79b0fa37a604?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hWqZgdeUlbVwD2JqqVLno04G6O-USP22JWLKcuZP1i83rXKC6ZGtac5zmkGny6H0bzWUe-jpC4eAeoVlZ5QP9TYnUxN0S2jZ7nKx7sXRlVOSkNeu9mRerjsoM8DSilp~UBQVhyJvx8tBT-YK2-O0hFn20058pKK4tcPZZR51y9PfTaFHl5wLGV4BUJ0D4Jr88A3ylNxccjTPg5fvpa0KOYvfq-VEh9Pna5Zv7aHeuNnYbG2NrdwmgMlgKcfLTnQIHsJGatCjamTAGGjWVHIjWjeD~68idzkuTJqYZQK9RzAOfvym3MgUxUl6lXbYWZ19kcpacIlsdC5x0m2ZgSi7nQ__', // Placeholder for job image
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
            'https://s3-alpha-sig.figma.com/img/6dc8/2156/488756cc4e8e68e318ecc3e0c373b3a7?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=p2YyAuUTdZKWd~NP-eHtuKZ-KxL8X-h278-uPFK2HEa9RkAecQnkZnkvqbKddHVc~aQSoAe8Gsc7EaPA3ODq5tmpC2Rnudskc69DX347eeh3LPVAcuiS5d-bhaKNfN5pFilWG45I2QSkc94gA~mhG79xYzJl5uKOAe2gXlvtJGn6~B1LtKxgDTQgdcw67AvnQZhM9UKUA4BSJQ30~PRg8Bu1FH3fBD7EV9JNa3tfu376rUNjrNiQZAbgwJkhdPLd0q8kjjYKY9L1mUiZUC2ghO1AThpX~mqPLwGkP1EdcgYHOLPxKwXHisd69alyI7KcIlhNCAk9OIJh0kVt388Tfw__', // Placeholder for job image
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
            'https://s3-alpha-sig.figma.com/img/e6a8/e58a/33b5ab9278017f8c6e6050f415bf8792?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cU6K2wsVf53bqDT4JV44OjQ-n3aBk2mhXB9Krld0uJGfjzRp2LZDIETjjVG7ls2swYXqXEAHH9Y5tJxlOOqGROhDRbl7G83hTflf9BATKR0nk2wAPLY5g6d31Pa9enYPnIum-TIg~tq3~9HDJXk9QzBK5aueBZLcga-6iJf0K9wqfw-q0jTHxQk4Ia2iI2FMkE6Gbcqo2rpD6NKSnrdOwj0Xnm5ULwZbZ5xXi-aRnMXIrYaYT-P5e9KDu32xnhHRrl1KFu0xC933GgcALiJqQUhbQKdgkfHEZW6-8YMf-FwKoV9tFcrcJoXM4FMWo1Cn9nK~deiy6uaVI5a86FFe4w__', // Placeholder for job image
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
                MaterialPageRoute(builder: (context) => JobDetailsPage())),
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
