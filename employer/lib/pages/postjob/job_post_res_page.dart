import 'package:employer/pages/jobviewpage/job_view_page.dart';
import 'package:employer/pages/walletpage/customb_btn.dart';
import 'package:employer/pages/widgets/auth_header.dart';
import 'package:flutter/material.dart';

class JobPostResponsePage extends StatefulWidget {
  const JobPostResponsePage({super.key});

  @override
  State<JobPostResponsePage> createState() => _JobPostResponsePageState();
}

class _JobPostResponsePageState extends State<JobPostResponsePage> {
  bool isSuccess = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Conditionally determine texts and image path
    final title = isSuccess ? "Successfully!" : "Job Request Update!";
    final subtitle = isSuccess
        ? "Your job was posted, wait and see how fast how socians will respond"
        : "Your skills are valuable, but this role has been filled. Discover more opportunities and be the first to find your next fit with Socian.";
    final imagePath =
        isSuccess ? 'assets/check_email.png' : 'assets/failure.png';
    final buttonText = isSuccess ? "CONTINUE" : "EXPLORE JOBS";

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Reusable header for title and subtitle
            AuthHeader(
              title: title,
              subtitle: subtitle,
            ),

            const SizedBox(height: 40),

            // Displaying the appropriate image
            Image.asset(
              imagePath,
              height: size.height * 0.2,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 60),

            // Custom Button for different actions
            CustomButton(
              text: buttonText,
              onPressed: _onButtonPressed,
            ),
          ],
        ),
      ),
    );
  }

  // Extracted action handling to a separate method
  void _onButtonPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ViewJobPage() ));
  }
}
