import 'package:flutter/material.dart';
import 'package:seekers/auth/auth_header.dart';
import 'package:seekers/auth/custom_button.dart';
import 'package:seekers/pages/homepage/homepage.dart';
import 'package:seekers/pages/jobviewpage/job_view_page.dart';

class ApplicationResponsePage extends StatefulWidget {
  const ApplicationResponsePage({super.key});

  @override
  State<ApplicationResponsePage> createState() =>
      _ApplicationResponsePageState();
}

class _ApplicationResponsePageState extends State<ApplicationResponsePage> {
  bool isSuccess = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Conditionally determine texts and image path
    final title = isSuccess ? "Congratulations!" : "Job Request Update!";
    final subtitle = isSuccess
        ? "You've been selected for the job. Click 'Start Working'"
        : "Your skills are valuable, but this role has been filled. Discover more opportunities and be the first to find your next fit with Socian.";
    final imagePath = isSuccess ? 'assets/success.png' : 'assets/failure.png';
    final buttonText = isSuccess ? "START WORKING" : "EXPLORE JOBS";

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: size.height * 0.18),
            // Reusable header for title and subtitle
            AuthHeader(
              title: title,
              subtitle: subtitle,
            ),

            const SizedBox(height: 40),

            // Displaying the appropriate image
            Image.asset(
              imagePath,
              height: size.height * 0.35,
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
    isSuccess
        ? Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ViewJobPage()))
        : Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomePage(
                      onJobPosted: () {},
                    )));
  }
}
