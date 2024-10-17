import 'package:flutter/material.dart';

// Define a reusable color scheme and text styles
const kPrimaryColor = Colors.purple;
const kAccentColor = Colors.grey;

const kTitleTextStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: kPrimaryColor,
);

const kSubTitleTextStyle = TextStyle(
  color: kPrimaryColor,
  fontSize: 19,
);

const kBodyTextStyle = TextStyle(
  fontSize: 19,
  color: kAccentColor,
);

const kHeadingTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: kPrimaryColor,
);

class JobDetailsPage extends StatelessWidget {
  const JobDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const JobHeader(), 
              const SizedBox(height: 32),
              const JobDescription(), 
              const SizedBox(height: 16),
              const JobRequirements(), 
              const Spacer(),
              GetJobButton(onPressed: _applyForJob), // Extracted and passed logic
            ],
          ),
        ),
      ),
    );
  }

  void _applyForJob() {
    // Add your logic to apply for the job
  }
}

class JobHeader extends StatelessWidget {
  const JobHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(
              "https://s3-alpha-sig.figma.com/img/e6a8/e58a/33b5ab9278017f8c6e6050f415bf8792?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cU6K2wsVf53bqDT4JV44OjQ-n3aBk2mhXB9Krld0uJGfjzRp2LZDIETjjVG7ls2swYXqXEAHH9Y5tJxlOOqGROhDRbl7G83hTflf9BATKR0nk2wAPLY5g6d31Pa9enYPnIum-TIg~tq3~9HDJXk9QzBK5aueBZLcga-6iJf0K9wqfw-q0jTHxQk4Ia2iI2FMkE6Gbcqo2rpD6NKSnrdOwj0Xnm5ULwZbZ5xXi-aRnMXIrYaYT-P5e9KDu32xnhHRrl1KFu0xC933GgcALiJqQUhbQKdgkfHEZW6-8YMf-FwKoV9tFcrcJoXM4FMWo1Cn9nK~deiy6uaVI5a86FFe4w__"),
        ),
        SizedBox(height: 20),
        Text('Waiter', style: kTitleTextStyle),
        SizedBox(height: 10),
        JobInfoCard(), 
      ],
    );
  }
}

class JobInfoCard extends StatelessWidget {
  const JobInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 1,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Java House', style: kSubTitleTextStyle),
            Text('Nairobi', style: kSubTitleTextStyle),
            Text('3 Mins Ago', style: kSubTitleTextStyle),
          ], 
        ),
      ),
    );
  }
}

class JobDescription extends StatelessWidget {
  const JobDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Job Description', style: kHeadingTextStyle),
        const SizedBox(height: 8),
        const Text(
          'We are looking for a skilled Waiter to take orders and deliver food and beverages to our customers. '
          'The right Waiter uplifts the dining experience for customers and ensures timely, polite, and efficient service.',
          style: kBodyTextStyle,
        ),
        const SizedBox(height: 8),
        FilledButton.tonal(
          onPressed: () {
            // Navigate to the full job description
          },
          child: const Text('Read more'),
        ),
      ],
    );
  }
}

class JobRequirements extends StatelessWidget {
  const JobRequirements({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Requirements', style: kHeadingTextStyle),
        SizedBox(height: 8),
        Text(
          '• Proven work experience as a Waiter or Waitress.\n'
          '• Ability to develop constructive working and interpersonal relationships.\n'
          '• Strong organizational and multitasking skills, with the ability to perform well in a fast-paced environment.\n'
          '• Active listening and effective communication skills.\n'
          '• Flexibility to work in shifts, including evenings and weekends.',
          style: kBodyTextStyle,
        ),
      ],
    );
  }
}

class GetJobButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GetJobButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: kPrimaryColor,
        ),
        child: const Text('GET THE JOB', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
