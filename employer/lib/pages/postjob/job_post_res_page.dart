import 'package:employer/main.dart';
// import 'package:employer/pages/jobviewpage/job_view_page.dart';
import 'package:employer/pages/walletpage/customb_btn.dart';
import 'package:employer/pages/widgets/auth_header.dart';
import 'package:flutter/material.dart';

class JobPostResponsePage extends StatefulWidget {
  const JobPostResponsePage({super.key});

  @override
  State<JobPostResponsePage> createState() => _JobPostResponsePageState();
}

class _JobPostResponsePageState extends State<JobPostResponsePage> {
  bool isSuccess = false;

  @override
  void initState() {
    super.initState();

    // Delay for 10 seconds, then update isSuccess to true
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        isSuccess = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Conditionally determine texts and image path
    final title = isSuccess ? "Successfully!" : "Connecting...";
    final subtitle = isSuccess
        ? "Go to the Homepage and click on the clock icon in the bottom right corner to view the shift details."
        : "Your job was posted, wait and see how fast socians will respond.";
    const imagePath = 'assets/check_email.png';
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

            // Displaying the appropriate image or loading indicator
            isSuccess
                ? Image.asset(
                    imagePath,
                    height: size.height * 0.2,
                    fit: BoxFit.contain,
                  )
                : const CircularProgressIndicator.adaptive(),

            const SizedBox(height: 60),

            // Custom Button for different actions
            Visibility(
              visible: isSuccess,
              child: CustomButton(
                text: buttonText,
                onPressed: _onButtonPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Extracted action handling to a separate method
  void _onButtonPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MainScreen()));
  }
}
