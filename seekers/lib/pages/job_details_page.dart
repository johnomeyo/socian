import 'package:flutter/material.dart';
import 'package:seekers/auth/custom_button.dart';
import 'package:seekers/pages/job_app_res_page.dart';

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
  fontSize: 17,
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
              const SizedBox(
                height: 30,
              ),
              // const Spacer(),
              CustomButton(
                  text: "GET JOB",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ApplicationResponsePage()));
                  }) // Extracted and passed logic
            ],
          ),
        ),
      ),
    );
  }

  // void _applyForJob() {
  //   // Add your logic to apply for the job
  // }
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
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsmtRqeJY7CbLHXzjGed_1wxS-CTCnp8_IPA&s"),
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
